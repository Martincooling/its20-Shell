#region Module 22 WIP fileCleaner 1

param (
    [Parameter(Mandatory=$false)][string]$d,
    [Parameter(Mandatory=$true)][string]$f
)
#desktop
#$path="D:\SKOLARBETE\NACKADEMIN\ITS20 - Shell\Python\RemoveCertainFiles\Logs"
#$backupPath = "D:\SKOLARBETE\NACKADEMIN\ITS20 - Shell\Python\RemoveCertainFiles\Backup\*"
#$logPath = "D:\SKOLARBETE\NACKADEMIN\ITS20 - Shell\Python\RemoveCertainFiles\RemoveScript.txt"
#laptop
$path="C:\Users\lillo\Desktop\SKOLARBETE\Cleaner\logs"
$backupPath = "C:\Users\lillo\Desktop\SKOLARBETE\Cleaner\backup\*"
$logPath = "C:\Users\lillo\Desktop\SKOLARBETE\Cleaner\RemoveScripts.txt"

dir $path -Recurse -Force -ea 0 | 
?{!$_.PsIsContainer} | 
ForEach-Object {
	$_ | del -Force -Exclude "*$f"
    Get-Date -Format "yyyy-MM-dd-hh:mm " | Out-File $logPath -Append -NoNewline
	$_.FullName | Out-File $logPath -Append
}

Write-Output "Cleaner done. Rest of the files are here: "

ls -path $path

$userChoice = Read-host -Prompt "Do you want to copy the items back (for practical reasons) [Y/N]"
if ($userChoice -eq "Y") {
    Copy-Item -Path $backupPath -Destination $path -Recurse
    Write-Output "Files have been copied"
}

#endregion