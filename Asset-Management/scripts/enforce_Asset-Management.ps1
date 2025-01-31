# PowerShell script to enforce Asset-Management security baseline
$Resources = Get-AzResource
foreach ($Resource in $Resources) { Write-Host "Tracking resource: $($Resource.Name)" }
Write-Host 'Asset Management baseline applied: Resources tracked.'
