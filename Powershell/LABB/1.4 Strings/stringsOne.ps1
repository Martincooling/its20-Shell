#region Module 17 strings 1

$text = "  192.168.1.1           2c-4d-54-b2-56-20     dynamic   "
$ipAddress = $text.Substring(2,11)
$macAddress = $text.Substring(17,24).Replace(' ', '')

Write-Output "MAC Addressen är: $macAddress"
Write-Output "IP-Addressen är: $ipAddress"

#endregion