#region Module 2 variables 2

param ($name, $age)
$futureAge = [int]$age + 5
Write-Output "Hello $name your age is $age. In 5 years you will be: $futureAge"

#endregion