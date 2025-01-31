# PowerShell script to enforce Data-Protection security baseline
$Vaults = Get-AzKeyVault
foreach ($Vault in $Vaults) { Set-AzKeyVaultAccessPolicy -VaultName $Vault.VaultName -EnablePurgeProtection }
Write-Host 'Data Protection baseline applied: Key Vault purge protection enabled.'
