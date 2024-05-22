# PowerShell script to manage the Print Spooler service

# Stop the Print Spooler service
Write-Host "Stopping Print Spooler service..."
Stop-Service -Name "Spooler" -Force

# Wait until the service is completely stopped
Start-Sleep -Seconds 5

# Delete all files in the print jobs folder
$spoolFolder = "C:\Windows\System32\spool\PRINTERS"
if (Test-Path $spoolFolder) {
    Write-Host "Deleting print job files in folder $spoolFolder..."
    Remove-Item "$spoolFolder\*" -Force -Recurse
} else {
    Write-Host "The folder $spoolFolder was not found."
}

# Start the Print Spooler service
Write-Host "Starting Print Spooler service..."
Start-Service -Name "Spooler"

Write-Host "Print Spooler service has been successfully restarted."
