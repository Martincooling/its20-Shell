#region Module 12 loops 1

$userNumberOne = Read-Host -Prompt 'Första talet please :)'
$userNumberTwo = Read-Host -Prompt 'Andra talet please :)'

$highestNum = ($userNumberOne, $userNumberTwo|Measure-Object -Maximum).Maximum
$lowestNum = ($userNumberOne, $userNumberTwo|Measure-Object -Minimum).Minimum

For ($i = $lowestNum; $i -le $highestNum; $i++) {
    Write-Output "$i"
}

#endregion