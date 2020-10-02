#region Module 13 loops 2

$summa = 0
while ($true) {
    $userInput = Read-Host -Prompt 'Please enter a number'
    $summa = $summa + [int]$userInput
    Write-Output "$summa"
}

#endregion