output "instance_name" {
  value = azurerm_virtual_machine.vm.*.name
}

output "instance_ip" {
  value = azurerm_virtual_machine.vm.*.private_ip_address
}

output "instance_public_ip" {
  value = azurerm_virtual_machine.vm.*.public_ip_address
}