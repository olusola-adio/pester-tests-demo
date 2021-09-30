<#
.SYNOPSIS
Runs the Help Quality tests

.DESCRIPTION
Runs the Help Quality tests

.EXAMPLE
Q001.Powershell.Help.Tests.ps1

#>

BeforeDiscovery {
    Write-Host "BeforeDiscovery"
    Import-Module ..\Resources\PowerShellScripts\DemoModule.psm1 -Force
}

Describe "Acceptance Tests" -Tag "Acceptance" {

    Context "when both parameters are used" {
        It "<number1> minus <number2> Returns <expected>" -ForEach @(
            @{ number1 = 1; number2 = 2; expected = -1 }
            @{ number1 = 31; number2 = 2; expected = 29 }
            @{ number1 = 1; number2 = 2; expected = -1 }
            @{ number1 = 31; number2 = 2; expected = 29 }
            @{ number1 = 1; number2 = 2; expected = -1 }
            @{ number1 = 31; number2 = 2; expected = 29 }
            @{ number1 = 1; number2 = 2; expected = -1 }
            @{ number1 = 31; number2 = 2; expected = 29 }
            @{ number1 = 1; number2 = 2; expected = -1 }
            @{ number1 = 31; number2 = 2; expected = 29 }
        ) {
            SubtractNumbers -number1 $number1 -number2 $number2 | Should -Be $expected
        }
    }

    Context "when one parameter is used" {
        It "number1 = <number1> Returns <expected>" -ForEach @(
            @{ number1 = 6; expected = 6 }
            @{ number1 = 6; expected = 6 }
            @{ number1 = 6; expected = 6 }
            @{ number1 = 6; expected = 6 }
        ) {
            SubtractNumbers -number1 $number1 | Should -Be $expected
        }
    }
}