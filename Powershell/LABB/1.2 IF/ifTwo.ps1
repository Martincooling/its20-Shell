#region Module 6 if 2

param ($antal)
$userInt = [int]$antal
if ($userInt -lt 10) {
    Write-Output "Beställ 30 paket"
}
elseif ($userInt -gt 9 -AND $userInt -lt 21) {
    Write-Output "Beställ 20 paket"
}
else {
    Write-Output "Du behöver inte beställa något"
}

#endregion