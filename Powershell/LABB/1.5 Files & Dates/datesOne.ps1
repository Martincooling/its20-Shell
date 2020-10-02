#region Module 20 dates 1

$Today = Get-Date
$christmas = "24 December 2020"
$christmasDate = [system.datetime]$christmas
$xmas = ($christmasdate.DayOfYear - $today.DayOfYear)
Write-Output "$xmas left until christmas :)"

#endregion