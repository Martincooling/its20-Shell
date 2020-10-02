#region Module 19 strings 3

$txt = '"c:\hej\test\hello.txt"'
$arrayTxt = $txt.ToCharArray()
[Array]::Reverse($arrayTxt)
$count = 1

foreach ($line in $arrayTxt) {
    if ($line -eq '\') {
        Write-Output "Om man räknar bakåt är den sista linen $count = $line"
        break
    }
    $count++
}
$result = $txt.Substring($txt.LastIndexOf('\')+1)
Write-Output $result

if ("hej" -in $txt, "hej") {
    Write-Output "Ja"
}

#endregion