#region Module 15 loops 4

param($tal1, $tal2, $tal3, $tal4)

$highestNum = ([int]$tal1, [int]$tal2, [int]$tal3, [int]$tal4|Measure-Object -Maximum).Maximum
$lowestNum = ([int]$tal1, [int]$tal2, [int]$tal3, [int]$tal4|Measure-Object -Minimum).Minimum
Write-Output "Highest Num: $highestNum"
Write-Output "Lowest Num: $lowestNum"

#endregion