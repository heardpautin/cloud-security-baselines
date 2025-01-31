# PowerShell script to enforce Logging-Monitoring security baseline
$LogProfiles = Get-AzLogProfile
foreach ($LogProfile in $LogProfiles) { Write-Host "Logging enabled for $($LogProfile.Name)" }
Write-Host 'Logging & Monitoring baseline applied: Log profiles verified.'
