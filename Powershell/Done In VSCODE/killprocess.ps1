

if ((Get-Process -Name "*discord*") -and (Get-Process -Name "*zoom*")) {
    Write-Warning "Chatta inte på föreläsningen! Du har 15 sekunder att stänga av discord..." 
    Start-Sleep -Seconds 15
}

$DiscordProcesses = Get-Process -Name "*discord*"
$ZoomProcesses = Get-Process -Name "*zoom*"

if ($DiscordProcesses -and $ZoomProcesses) {
    Write-Warning "Du hade din chans - nu stänger jag ner chatten"
    Foreach ($process in $DiscordProcesses) {
        $process.Kill()
    }
} else {
    Write-Host "Bra." -ForegroundColor Green
}