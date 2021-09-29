<#
.SYNOPSIS
Runs the Help Quality tests

.DESCRIPTION
Runs the Help Quality tests

.EXAMPLE
Q001.Powershell.Help.Tests.ps1

#>

Import-Module ..\Resources\PowerShellScripts\DemoModule.psm1 -Force

Describe "Add-Numbers" -Tag "Unit" {
    Context "testing parameters" {
        It "should have a parameter named number1" {
            Get-Command Add-Numbers | Should -HaveParameter number1 -Type Int
            Get-Command Add-Numbers | Should -HaveParameter number1 -DefaultValue 2
            Get-Command Add-Numbers | Should -HaveParameter number1 -Not -Mandatory
        }
        It "should have a parameter named number2" {
            Get-Command Add-Numbers | Should -HaveParameter number2 -Type Int
            Get-Command Add-Numbers | Should -HaveParameter number2 -DefaultValue 2
            Get-Command Add-Numbers | Should -HaveParameter number2 -Not -Mandatory
        }
    }

    Context "when no parameters are used" {
        It "should return 4" {
            Add-Numbers | Should -Be 4
        }

        It "should return an int" {
            Add-Numbers | Should -BeOfType Int
        }
    }

    Context "when one parameter is used" {
        BeforeAll{
            $number1 = 4
        }
        It "$number1 plus default(2) should return $($number1+2)" {
            Add-Numbers -number1 $number1 | Should -Be 6
        }

        It "$number1 plus default(2) should return an int" {
            Add-Numbers -number1 $number1 | Should -BeOfType Int
        }
    }

    Context "when both parameters are used" {

        BeforeAll{
            $number1 = 4
            $number2 = 4
        }
        It "$number1 plus $number2 should return $($number1+$number2)" {
            Add-Numbers -number1 $number1 -number2 $number2 | Should -Be 8
        }

        It "$number1 plus $number2 should return an int" {
            Add-Numbers -number1 $number1 -number2 $number2 | Should -BeOfType Int
        }
    }
}