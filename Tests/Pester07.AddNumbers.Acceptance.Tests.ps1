<#
.SYNOPSIS
Runs the AddNumbers Acceptance tests

.DESCRIPTION
Runs the AddNumbers Acceptance tests

.EXAMPLE
Pester07.AddNumbers.Acceptance.Tests.ps1

#>

BeforeDiscovery {
    Write-Host "BeforeDiscovery"
    Import-Module ..\Resources\PowerShellScripts\DemoModule.psm1 -Force
}

Describe "Acceptance Tests" -Tag "Acceptance" {

    Context "when both parameters are used" {
        It "<number1> plus <number2> Returns <expected>" -ForEach @(
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
            @{ number1 = 1; number2 = 2; expected = 3 }
        ) {
            AddNumbers -number1 $number1 -number2 $number2 | Should -Be $expected
        }
    }

    Context "when one parameter is used" {
        It "number1 = <number1> Returns <expected>" -ForEach @(
            @{ number1 = 1; expected = 3 }
        ) {
            AddNumbers -number1 $number1 | Should -Be $expected
        }
    }
}