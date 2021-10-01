<#
.SYNOPSIS
Runs the SubtractNumbers Acceptance tests

.DESCRIPTION
Runs the SubtractNumbers Acceptance tests

.EXAMPLE
Pester08.SubtractNumbers.Acceptance.Tests.ps1

#>

BeforeDiscovery {
    Write-Host "BeforeDiscovery"
    Import-Module ..\Resources\PowerShellScripts\DemoModule.psm1 -Force
}

Describe "Acceptance Tests" -Tag "Acceptance" {

    BeforeDiscovery {
        $numbersOneParam = @()
        for ($i = 1; $i -le 50; $i++) {
            $input1 = $i + $i + 1
            $answer = $($input1 - 0)
            $numbersOneParam += @{number1 = $input1; number2 = $input2; expected = $answer }
        }
        $numbersBothParams = @()
        for ($i = 1; $i -le 50; $i++) {
            $input1 = $i + 37 - 2
            $input2 = $i + $i + 1
            $answer = $($input1 - $input2)
            $numbersBothParams += @{number1 = $input1; number2 = $input2; expected = $answer }
        }
    }
    BeforeAll {
        $numbersOneParam = @()
        for ($i = 1; $i -le 50; $i++) {
            $input1 = $i + $i + 1
            $answer = $($input1 - 0)
            $numbersOneParam += @{number1 = $input1; number2 = $input2; expected = $answer }
        }
        $numbersBothParams = @()
        for ($i = 1; $i -le 50; $i++) {
            $input1 = $i + 37 - 2
            $input2 = $i + $i + 1
            $answer = $($input1 - $input2)
            $numbersBothParams += @{number1 = $input1; number2 = $input2; expected = $answer }
        }
    }

    Context "when both parameters are used" {
        It "<number1> minus <number2> Returns <expected>" -ForEach @(
            @{ number1 = 81; number2 = 2; expected = 79 }
        ) {
            SubtractNumbers -number1 $number1 -number2 $number2 | Should -Be $expected
        }

        It "<number1> minus <number2> Returns <expected>" -ForEach @($numbersBothParams) {
            SubtractNumbers -number1 $number1 -number2 $number2 | Should -Be $expected
        }

    }

    Context "when one parameter is used" {
        It "number1 = <number1> Returns <expected>" -ForEach @(
            @{ number1 = 5; expected = 5 }
        ) {
            SubtractNumbers -number1 $number1 | Should -Be $expected
        }

        It "number1 = <number1> Returns <expected>" -ForEach @($numbersOneParam) {
            SubtractNumbers -number1 $number1 | Should -Be $expected
        }
    }
}