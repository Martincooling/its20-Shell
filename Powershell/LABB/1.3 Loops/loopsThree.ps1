#region Module 14 loops 3

$summa = 0
while ($true) {
    $userInput = Read-Host -Prompt 'Please enter a number'
    $summa = $summa + [int]$userInput
    Write-Output "$summa"
    
    $userChoice = Read-Host -Prompt 'Do you want to continue? [Y/N]'
    if ($userChoice -eq "N") {
        break;
    }
    elseif ($userChoice -eq "Y") {
        continue;
    }
    else {
        Write-Output "That wasnt Y or N so i guess you wanna keep going"
        continue;
    }
}

#endregion