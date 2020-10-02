region Module 16 loops 5
param (
    [Parameter(Mandatory=$true)][int]$tal1,
    [Parameter(Mandatory=$false)][int]$tal2,
    [Parameter(Mandatory=$false)][int]$tal3,
    [Parameter(Mandatory=$false)][int]$tal4
 )

 $arrayNum = @()
 $arrayNum += $tal1, $tal2, $tal3, $tal4
 $summa = 0
 Foreach ($number in $arrayNum) {
    if ($number -gt $summa) {
        $summa = $number
    }
 }
 Write-Output "$summa"
#endregion