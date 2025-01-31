# PowerShell script to enforce IAM security baseline
Connect-AzureAD
$Users = Get-AzureADUser -All $true
foreach ($User in $Users) { Set-AzureADUser -ObjectId $User.ObjectId -StrongAuthenticationRequired $true }
Write-Host 'IAM security baseline applied: MFA enabled.'
