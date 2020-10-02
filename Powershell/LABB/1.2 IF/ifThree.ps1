#region Module 7 if 3

param($temp)
$userFloat = [float]$temp
if ($userFloat -gt 37.8 -AND $userFloat -lt 39.5) {
    Write-Output "Du har feber"
}
elseif ($userFloat -gt 39.4) {
    Write-Output "Doktor pls"
}
else {
    Write-Output "Du har inte feber"
}

#endregion