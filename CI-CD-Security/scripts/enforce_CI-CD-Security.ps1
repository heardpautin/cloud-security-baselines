# PowerShell script to enforce CI-CD-Security security baseline
az pipelines security create --pipeline "SecurePipeline" --permissions "LeastPrivilege"
Write-Host 'CI/CD Security baseline applied: Secure pipeline created.'
