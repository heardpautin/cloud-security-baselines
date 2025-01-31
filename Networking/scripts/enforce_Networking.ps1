# PowerShell script to enforce Networking security baseline
$NSGs = Get-AzNetworkSecurityGroup
foreach ($NSG in $NSGs) {
    $Rules = $NSG.SecurityRules | Where-Object { $_.DestinationPortRange -eq "3389" -or $_.DestinationPortRange -eq "22" }
    foreach ($Rule in $Rules) {
        Remove-AzNetworkSecurityRuleConfig -NetworkSecurityGroup $NSG -Name $Rule.Name -Force
    }
    $NSG | Set-AzNetworkSecurityGroup
}
Write-Host "Networking security baseline applied: RDP & SSH blocked."

