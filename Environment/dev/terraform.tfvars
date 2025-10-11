rgdetails = {
  rg1 = {
    name     = "rg-demo-01"
    location = "East US"
  }
  rg2 = {
    name     = "rg-demo-02"
    location = "West US"
  }
}
stgdetails = {
  stg1 = {
    name                     = "stgaccountdemo01"
    resource_group_name      = "rg-demo-01"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "stgaccountdemo02"
    resource_group_name      = "rg-demo-02"
    location                 = "West US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
vnetdetails = {
  vnet1 = {
    name                = "vnet-demo-01"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    resource_group_name = "rg-demo-01"
  }
    vnet2 = {
    name                = "vnet-demo-02"
    address_space       = ["10.0.0.0/16"]
    location            = "West US"
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
    name                 = "subnet-demo-01"
    resource_group_name  = "rg-demo-02"
    virtual_network_name = "vnet-demo-02"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
