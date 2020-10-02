#region Module 9 if 5

param($kat)

if ($kat -eq "S" -OR $kat -eq "P") {
    Write-Output "Resan kostar 20kr"
}
elseif ($kat -eq "V") {
    Write-Output "Resan kostar 30kr"
}
else {
    Write-Output "Ogiltig kategori"
}

#endregion