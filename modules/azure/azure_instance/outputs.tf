output "instance_name" {
  value = azurerm_virtual_machine.vm.*.name
}