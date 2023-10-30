module "vnet_appgw" {
  source = "./modules/vnet_appgw"
  # Pass any necessary variables to Module A
}

module "vm_keyvault" {
  source = "./modules/vm_keyvault"
  # Pass any necessary variables to Module B
}

