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

function Add-Numbers {
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