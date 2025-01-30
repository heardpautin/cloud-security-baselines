# Disable RDP (3389) and SSH (22) access in all NSGs
$NSGs = Get-AzNetworkSecurityGroup

foreach ($NSG in $NSGs) {
    $Rules = $NSG.SecurityRules | Where-Object { $_.DestinationPortRange -eq "3389" -or $_.DestinationPortRange -eq "22" }
    foreach ($Rule in $Rules) {
        Remove-AzNetworkSecurityRuleConfig -NetworkSecurityGroup $NSG -Name $Rule.Name -Force
    }
    $NSG | Set-AzNetworkSecurityGroup
}

Write-Host "RDP (3389) & SSH (22) rules removed from all NSGs"

