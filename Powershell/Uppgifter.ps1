#region module 0 TEMPLATE

#param (
#    [Parameter(Mandatory=$true)][datatype]$d,
#    [Parameter(Mandatory=$false)][datetype]$f
# )

#GET-MEMBER KOLLAR UT KOMMANDON TILLGÄNGLIGA
#endregion

#region Module 1 variables 1

#$name = Read-Host -Prompt 'What is your name?'
#$lastName = Read-Host -Prompt 'What is your last name?'
#$Date = Get-Date
#Write-Output "Hello $lastName, $name"
#Write-Output "The date is currently: $Date"

#endregion

#region Module 2 variables 2

#param ($name, $age)
#$futureAge = [int]$age + 5
#Write-Output "Hello $name your age is $age. In 5 years you will be: $futureAge"

#endregion

#region Module 3 variables 3

#param ($fornamn, $efternamn)
#Write-OutPut "Du heter $efternamn, $fornamn"

#endregion

#region Module 4 variables 4

#param (
#    [Parameter(Mandatory=$true)][int]$tal1,
#    [Parameter(Mandatory=$true)][int]$tal2
# )
#$result = $tal1 + $tal2
#Write-Output "$result"

#endregion

#region Module 5 if 1

#param ($tal)
#$userInt = [int]$tal
#if ($userInt -lt 10) {
#    Write-Output "Talet är mindre än 10"
#}
#Elseif ($userInt -gt 10) {
#    Write-Output "Talet är större än 10"
#}
#Elseif ($userInt -eq 10) {
#    Write-Output "Talet är 10 :)"
#}
#else {
#    Write-Output "Hur kom du hit?"
#}

#endregion

#region Module 6 if 2

#param ($antal)
#$userInt = [int]$antal
#if ($userInt -lt 10) {
#    Write-Output "Beställ 30 paket"
#}
#elseif ($userInt -gt 9 -AND $userInt -lt 21) {
#    Write-Output "Beställ 20 paket"
#}
#else {
#    Write-Output "Du behöver inte beställa något"
#}

#endregion

#region Module 7 if 3

#param($temp)
#$userFloat = [float]$temp
#if ($userFloat -gt 37.8 -AND $userFloat -lt 39.5) {
#    Write-Output "Du har feber"
#}
#elseif ($userFloat -gt 39.4) {
#    Write-Output "Doktor pls"
#}
#else {
#    Write-Output "Du har inte feber"
#}

#endregion

#region Module 8 if 4

#param($age)
#$userInt = [int]$age
#if ($userInt -lt 18) {
#    Write-Output "Du är inte myndig"
#}
#elseif ($userInt -gt 17 -AND $userInt -lt 66) {
#    Write-Output "Du är myndig"
#}
#else {
#    Write-Output "Du är pensionär"
#}
#endregion

#region Module 9 if 5

#param($kat)
#
#if ($kat -eq "S" -OR $kat -eq "P") {
#    Write-Output "Resan kostar 20kr"
#}
#elseif ($kat -eq "V") {
#    Write-Output "Resan kostar 30kr"
#}
#else {
#    Write-Output "Ogiltig kategori"
#}

#endregion

#region Module 10 if 6

#$correctUser = "Martin"
#$correctPw = "hej123"
#
#$userName = Read-Host -Prompt 'Please enter your username'
#$userPw = Read-Host -Prompt 'Please enter your password'
#
#if ($userName -eq $correctUser -and $userPw -eq $correctPw) {
#    Write-Output "Correct login :)"
#}
#else {
#    Write-Output "Incorrect login"
#}

#endregion

#region Module 11 if 7

#param($country)
#if ($country -eq "Sverige" -or $country -eq "Norge" -or $country -eq "Danmark") {
#    Write-Output "Du bor i skandinavien"
#}
#else {
#    Write-Output "Du bor inte i skandinavien"
#}

#endregion

#region Module 12 loops 1

#$userNumberOne = Read-Host -Prompt 'Första talet please :)'
#$userNumberTwo = Read-Host -Prompt 'Andra talet please :)'
#
#$highestNum = ($userNumberOne, $userNumberTwo|Measure-Object -Maximum).Maximum
#$lowestNum = ($userNumberOne, $userNumberTwo|Measure-Object -Minimum).Minimum
#
#For ($i = $lowestNum; $i -le $highestNum; $i++) {
#    Write-Output "$i"
#}

#endregion

#region Module 13 loops 2

#$summa = 0
#while ($true) {
#    $userInput = Read-Host -Prompt 'Please enter a number'
#    $summa = $summa + [int]$userInput
#    Write-Output "$summa"
#}

#endregion

#region Module 14 loops 3

#$summa = 0
#while ($true) {
#    $userInput = Read-Host -Prompt 'Please enter a number'
#    $summa = $summa + [int]$userInput
#    Write-Output "$summa"
#    
#    $userChoice = Read-Host -Prompt 'Do you want to continue? [Y/N]'
#    if ($userChoice -eq "N") {
#        break;
#    }
#    elseif ($userChoice -eq "Y") {
#        continue;
#    }
#    else {
#        Write-Output "That wasnt Y or N so i guess you wanna keep going"
#        continue;
#    }
#}

#endregion

#region Module 15 loops 4

#param($tal1, $tal2, $tal3, $tal4)
#
#$highestNum = ([int]$tal1, [int]$tal2, [int]$tal3, [int]$tal4|Measure-Object -Maximum).Maximum
#$lowestNum = ([int]$tal1, [int]$tal2, [int]$tal3, [int]$tal4|Measure-Object -Minimum).Minimum
#Write-Output "Highest Num: $highestNum"
#Write-Output "Lowest Num: $lowestNum"

#endregion

#region Module 16 loops 5
#param (
#    [Parameter(Mandatory=$true)][int]$tal1,
#    [Parameter(Mandatory=$false)][int]$tal2,
#    [Parameter(Mandatory=$false)][int]$tal3,
#    [Parameter(Mandatory=$false)][int]$tal4
# )
#
# $arrayNum = @()
# $arrayNum += $tal1, $tal2, $tal3, $tal4
# $summa = 0
# Foreach ($number in $arrayNum) {
#    if ($number -gt $summa) {
#        $summa = $number
#    }
# }
# Write-Output "$summa"
#endregion

#region Module 17 strings 1

#$text = "  192.168.1.1           2c-4d-54-b2-56-20     dynamic   "
#$ipAddress = $text.Substring(2,11)
#$macAddress = $text.Substring(17,24).Replace(' ', '')

#Write-Output "MAC Addressen är: $macAddress"
#Write-Output "IP-Addressen är: $ipAddress"

#endregion

#region Module 18 strings 2

#param($txt, $convert)

#if ($convert -eq "upper") {
#    $txtUpper = $txt.ToUpper()
#    Write-Output "$txtUpper"
#}
#elseif($convert -eq "lower") {
#    $txtLower = $txt.ToLower()
#    Write-Output "$txtLower"
#}

#endregion

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

#region Module 20 dates 1

#$Today = Get-Date
#$christmas = "24 December 2020"
#$christmasDate = [system.datetime]$christmas
#$xmas = ($christmasdate.DayOfYear - $today.DayOfYear)
#Write-Output "$xmas left until christmas :)"

#endregion

#region Module 21 files 1

#param (
#    [Parameter(Mandatory=$true)][string]$d,
#    [Parameter(Mandatory=$true)][string]$f
# )
#
# ls -Path "$d" -Filter *$f | select name, length
#endregion

#region Module 22 WIP fileCleaner 1

#param (
#    [Parameter(Mandatory=$false)][string]$d,
#    [Parameter(Mandatory=$true)][string]$f
#)
#desktop
#$path="D:\SKOLARBETE\NACKADEMIN\ITS20 - Shell\Python\RemoveCertainFiles\Logs"
#$backupPath = "D:\SKOLARBETE\NACKADEMIN\ITS20 - Shell\Python\RemoveCertainFiles\Backup\*"
#$logPath = "D:\SKOLARBETE\NACKADEMIN\ITS20 - Shell\Python\RemoveCertainFiles\RemoveScript.txt"
#laptop
#$path="C:\Users\lillo\Desktop\SKOLARBETE\Cleaner\logs"
#$backupPath = "C:\Users\lillo\Desktop\SKOLARBETE\Cleaner\backup\*"
#$logPath = "C:\Users\lillo\Desktop\SKOLARBETE\Cleaner\RemoveScripts.txt"
#
#dir $path -Recurse -Force -ea 0 | 
#?{!$_.PsIsContainer} | 
#ForEach-Object {
#	$_ | del -Force -Exclude "*$f"
#    Get-Date -Format "yyyy-MM-dd-hh:mm " | Out-File $logPath -Append -NoNewline
#	$_.FullName | Out-File $logPath -Append
#}
#
#Write-Output "Cleaner done. Rest of the files are here: "
#
#ls -path $path
#
#$userChoice = Read-host -Prompt "Do you want to copy the items back (for practical reasons) [Y/N]"
#if ($userChoice -eq "Y") {
#    Copy-Item -Path $backupPath -Destination $path -Recurse
#    Write-Output "Files have been copied"
#}

#endregion

#region Module 23 Potential Tenta Fråga

#param (
#    [Parameter(Mandatory=$true)][int]$tal1,
#    [Parameter(Mandatory=$true)][int]$tal2
#)
#
#$highestNum = ($tal1, $tal2|Measure-Object -Maximum).Maximum
#$lowestNum = ($tal1, $tal2|Measure-Object -Minimum).Minimum
#
#for ($i=$lowestNum; $i-le $highestNum; $i=$i+2) {
#    Write-Output $i
#}

#endregion