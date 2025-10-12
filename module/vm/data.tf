data "azurerm_network_interface" "nicblock" {
    for_each            = var.vmdetails
    name                = each.value.network_interface_name
    resource_group_name = each.value.resource_group_name
}