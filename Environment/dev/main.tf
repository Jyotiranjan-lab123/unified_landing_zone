module "rgmodule" {
  source    = "../../module/Resource_rg"
  rgdetails = var.rgdetails
  
}
# module "stgmodule" {
#     source    = "../../module/storage_stg"
#     stgdetails = var.stgdetails
#     depends_on = [ module.rgmodule ]
  
# }
module "vnetmodule" {
    source    = "../../module/vnet"
    vnetdetails = var.vnetdetails
    depends_on = [ module.rgmodule ]
  
}
module "subnetmodule" {
    source    = "../../module/subnet"
    subnetdetails = var.subnetdetails
    depends_on = [ module.rgmodule, module.vnetmodule ]
  
}
module "nicmodule" {
    source    = "../../module/nic"
    nicdetails = var.nicdetails
    depends_on = [ module.rgmodule, module.subnetmodule ]
  
}
module "pipmodule" {
    source    = "../../module/pip"
    pipdetails = var.pipdetails
    depends_on = [ module.rgmodule ]
  
}
module "vmmodule" {
    source    = "../../module/vm"
    vmdetails = var.vmdetails
    depends_on = [ module.rgmodule, module.nicmodule, module.pipmodule, module.vnetmodule]
  
}