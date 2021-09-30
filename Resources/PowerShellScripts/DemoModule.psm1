function Get-Something {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $ThingToGet = "something"
    )

    Write-Output "I got $ThingToGet!"
}

function New-Thing {
    "Thing"    
}

function AddNumbers {
    [CmdletBinding()]
    param (
        [Parameter()]
        [int]
        $number1 = 2,
        [Parameter()]
        [int]
        $number2 = 2
    )

    $number1 + $number2
}

function SubtractNumbers {
    [CmdletBinding()]
    param (
        [Parameter()]
        [int]
        $number1 = 0,
        [Parameter()]
        [int]
        $number2 = 0
    )

    $number1 - $number2
}