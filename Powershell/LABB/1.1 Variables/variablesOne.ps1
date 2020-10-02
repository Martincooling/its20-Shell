#region Module 1 variables 1

$name = Read-Host -Prompt 'What is your name?'
$lastName = Read-Host -Prompt 'What is your last name?'
$Date = Get-Date
Write-Output "Hello $lastName, $name"
Write-Output "The date is currently: $Date"

#endregion
