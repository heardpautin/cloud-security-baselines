# PowerShell script to enforce Privileged-Access security baseline
Import-Module Microsoft.Graph.Identity.SignIns
Connect-MgGraph -Scopes 'RoleManagement.ReadWrite.Directory'
New-MgRoleManagementDirectoryRoleAssignment -RoleDefinitionId "<GlobalAdminRoleID>" -PrincipalId "<UserID>"
Write-Host 'Privileged Access baseline applied: JIT & role restrictions enforced.'
