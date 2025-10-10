# resource "azurerm_virtual_machine" "vmblock" {
#   for_each            = var.vmdetails
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
#   network_interface_ids = [each.value.network_interface_id]
#   vm_size             = each.value.vm_size

#   storage_os_disk {
#     name              = each.value.os_disk_name
#     caching           = each.value.os_disk_caching
#     create_option     = "FromImage"
#     managed_disk_type = each.value.os_disk_managed_type
  
# }
# }  