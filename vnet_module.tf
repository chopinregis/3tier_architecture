module "virtual_network" {
  source              = "./vnet_module/"
  resource_group_name = "Mcit-3tier-terraformrg"
  location            = "West Europe"
}

output "module_web_vm_public_ip" {
  value = module.virtual_network.module_web_vm_public_ip
}
