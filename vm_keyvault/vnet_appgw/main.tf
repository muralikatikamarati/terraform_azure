resource "azurerm_resource_group" "vm_rg" {
  name     = "vm-keyvault-rg"
  location = "East US"
}

resource "azurerm_key_vault" "example" {
  name                = "example-keyvault"
  resource_group_name = azurerm_resource_group.vm_rg.name
  location            = azurerm_resource_group.vm_rg.location
  enabled_for_disk_encryption = true
  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name = "standard"
  purge_protection_enabled = false
}

# Define the Virtual Machine and grant permissions to the Key Vault
#test