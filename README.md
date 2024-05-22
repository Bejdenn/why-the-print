# why-the-print

Restarts the print spooler service on Windows. I need this several times a week because for some reason some print jobs get stuck in the queue and the only way to get them out is to restart the service. This may be useful for you as well.

## Usage

```PowerShell
.\why-the-print.ps1
```

This script requires administrative privileges to stop the service and delete files in the system folder.
