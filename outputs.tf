# Output the Public IP of the Web VM
output "web_vm_public_ip" {
  value = azurerm_linux_virtual_machine.web_vm.public_ip_address
}
