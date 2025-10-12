resource "azurerm_public_ip" "pipblock" {
    for_each            = var.pipdetails
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    allocation_method   = "Static"
  
}