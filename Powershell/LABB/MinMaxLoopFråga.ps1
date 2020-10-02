#region Module 23 Potential Tenta Fråga

param (
    [Parameter(Mandatory=$true)][int]$tal1,
    [Parameter(Mandatory=$true)][int]$tal2
)

$highestNum = ($tal1, $tal2|Measure-Object -Maximum).Maximum
$lowestNum = ($tal1, $tal2|Measure-Object -Minimum).Minimum

for ($i=$lowestNum; $i-le $highestNum; $i=$i+2) {
    Write-Output $i
}

#endregion