#region Module 11 if 7

param($country)
if ($country -eq "Sverige" -or $country -eq "Norge" -or $country -eq "Danmark") {
    Write-Output "Du bor i skandinavien"
}
else {
    Write-Output "Du bor inte i skandinavien"
}

#endregion