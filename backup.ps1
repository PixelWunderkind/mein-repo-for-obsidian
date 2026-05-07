
Write-Host "--- Obsidian Sync wird gestartet ---" -ForegroundColor Cyan
git add .
$date = Get-Date -Format "dd.MM.yyyy HH:mm"
$message = "Vault Sync: $date"
git commit -m "$message"
git push
Write-Host "--- Backup erfolgreich abgeschlossen! ---" -ForegroundColor Green
Start-Sleep -Seconds 2

