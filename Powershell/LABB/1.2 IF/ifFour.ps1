#region Module 8 if 4

param($age)
$userInt = [int]$age
if ($userInt -lt 18) {
    Write-Output "Du är inte myndig"
}
elseif ($userInt -gt 17 -AND $userInt -lt 66) {
    Write-Output "Du är myndig"
}
else {
    Write-Output "Du är pensionär"
}
#endregion