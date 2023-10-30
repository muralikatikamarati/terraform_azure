output "vnet_appgw_resource_group" {
  value = module.vnet_appgw.vnet_resource_group_name
}

output "vm_keyvault_resource_group" {
  value = module.vm_keyvault.vm_resource_group_name
}

output "vm_keyvault_name" {
  value = module.vm_keyvault.key_vault_name
}
