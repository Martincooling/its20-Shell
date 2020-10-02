#region Module 21 files 1

param (
    [Parameter(Mandatory=$true)][string]$d,
    [Parameter(Mandatory=$true)][string]$f
 )

 ls -Path "$d" -Filter *$f | select name, length
#endregion