# PowerShell script to enforce DevOps-Security security baseline
az pipelines security create --pipeline "SecurePipeline" --permissions "LeastPrivilege"
Write-Host 'DevOps Security baseline applied: Secure pipeline created.'
