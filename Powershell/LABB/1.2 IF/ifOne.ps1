#region Module 5 if 1

param ($tal)
$userInt = [int]$tal
if ($userInt -lt 10) {
    Write-Output "Talet är mindre än 10"
}
Elseif ($userInt -gt 10) {
    Write-Output "Talet är större än 10"
}
Elseif ($userInt -eq 10) {
    Write-Output "Talet är 10 :)"
}
else {
    Write-Output "Hur kom du hit?"
}

#endregion
