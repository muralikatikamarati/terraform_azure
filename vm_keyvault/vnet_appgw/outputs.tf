output "vm_resource_group_name" {
  value = azurerm_resource_group.vm_rg.name
}

output "key_vault_name" {
  value = azurerm_key_vault.example.name
}
