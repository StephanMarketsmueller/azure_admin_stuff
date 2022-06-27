# List Actions for an existing role
(Get-AzRoleDefinition "Virtual Machine Contributor").actions


# Create a new custom role based on an existing one

# PowerShell get role assignments
Get-AzRoleAssignment
Get-AzDenyAssignment

# Powershell create custom role
$role = Get-AzRoleDefinition "Virtual Machine Contributor"
$role.Id = $null
$role.Name = "VM Reader"
$role.Description = "Can see VMs"
$role.Actions.Clear()
$role.Actions.Add("Microsoft.Storage/*/read")
$role.Actions.Add("Microsoft.Network/*/read")
$role.Actions.Add("Microsoft.Compute/*/read")
$role.AssignableScopes.clear()
$role.AssignableScopes.Add("/subscriptions/11111111-2222-3333-4444-55555555555555")
New-AzRoleDefinition -Role $role