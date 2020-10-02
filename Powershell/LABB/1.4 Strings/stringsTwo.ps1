#region Module 18 strings 2

param($txt, $convert)

if ($convert -eq "upper") {
    $txtUpper = $txt.ToUpper()
    Write-Output "$txtUpper"
}
elseif($convert -eq "lower") {
    $txtLower = $txt.ToLower()
    Write-Output "$txtLower"
}

#endregion