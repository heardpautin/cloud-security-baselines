# PowerShell script to enforce Incident-Response security baseline
New-AzSentinelAlertRule -Name "Unusual Login Activity" -Severity "High"
Write-Host 'Incident Response baseline applied: Sentinel alert rule created.'
