#region Module 4 variables 4

param (
    [Parameter(Mandatory=$true)][int]$tal1,
    [Parameter(Mandatory=$true)][int]$tal2
 )
$result = $tal1 + $tal2
Write-Output "$result"

#endregion