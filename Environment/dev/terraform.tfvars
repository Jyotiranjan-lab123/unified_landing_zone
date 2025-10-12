rgdetails = {
  rg1 = {
    name     = "rg-demo-01"
    location = "Central US"
  }
  rg2 = {
    name     = "rg-demo-02"
    location = "Centralindia"
  }
}
# stgdetails = {
#   stg1 = {
#     name                     = "stgaccountdemo01"
#     resource_group_name      = "rg-demo-01"
#     location                 = "Central US"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }
#   stg2 = {
#     name                     = "stgaccountdemo02"
#     resource_group_name      = "rg-demo-02"
#     location                 = "centralindia"
#     account_tier             = "Standard"
#     account_replication_type = "GRS"
#   }
# }
vnetdetails = {
  vnet1 = {
    name                = "vnet-demo-01"
    address_space       = ["10.0.0.0/16"]
    location            = "central US"
    resource_group_name = "rg-demo-01"
  }
  vnet2 = {
    name                = "vnet-demo-02"
    address_space       = ["10.0.0.0/16"]
    location            = "Centralindia"
    resource_group_name = "rg-demo-02"
  }
}

subnetdetails = {
  subnet1 = {
    name                 = "subnet-demo-01"
    resource_group_name  = "rg-demo-01"
    virtual_network_name = "vnet-demo-01"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "subnet-demo-02"
    resource_group_name  = "rg-demo-02"
    virtual_network_name = "vnet-demo-02"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
nicdetails = {
  nic1 = {
    name                 = "nic-demo-01"
    location             = "Central US"
    resource_group_name  = "rg-demo-01"
    subnet_name          = "subnet-demo-01"
    virtual_network_name = "vnet-demo-01"
  }
  nic2 = {
    name                 = "nic-demo-02"
    location             = "Centralindia"
    resource_group_name  = "rg-demo-02"
    subnet_name           = "subnet-demo-02"
    virtual_network_name = "vnet-demo-02"
  }
}
pipdetails = {
  pip1 = {
    name                 = "pip-demo-01"
    location             = "Central US"
    resource_group_name  = "rg-demo-01"
    subnet_name          = "subnet-demo-01"
    virtual_network_name = "vnet-demo-01"
  }
  pip2 = {
    name                 = "pip-demo-02"
    location             = "Centralindia"
    resource_group_name  = "rg-demo-02"
    subnet_name          = "subnet-demo-01"
    virtual_network_name = "vnet-demo-02"
  }
}
vmdetails = {
  vm1 = {
    name                   = "vm-demo-01"
    location               = "Central US"
    resource_group_name    = "rg-demo-01"
    network_interface_name = "nic-demo-01"
    vm_size                = "Standard_B2s"
    admin_username         = "azureuser"
    admin_password         = "Password1234!"
    public_name            = "pip-demo-01"

  }

  vm2 = {
    name                   = "vm-demo-02"
    location               = "Centralindia"
    resource_group_name    = "rg-demo-02"
    network_interface_name = "nic-demo-02"
    vm_size                = "Standard_B2s"
    admin_username         = "azureuser"
    admin_password         = "Password1234!"
    public_name            = "pip-demo-02"

  }
}

