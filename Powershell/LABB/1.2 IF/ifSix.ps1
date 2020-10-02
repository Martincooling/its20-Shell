#region Module 10 if 6

$correctUser = "Martin"
$correctPw = "hej123"

$userName = Read-Host -Prompt 'Please enter your username'
$userPw = Read-Host -Prompt 'Please enter your password'

if ($userName -eq $correctUser -and $userPw -eq $correctPw) {
    Write-Output "Correct login :)"
}
else {
    Write-Output "Incorrect login"
}

#endregion