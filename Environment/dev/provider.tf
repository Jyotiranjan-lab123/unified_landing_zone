terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.47.0"
        }
    }
    
}   
provider "azurerm" {
    features {}
    subscription_id = "a4103c11-dd30-480e-aa10-f78d73acbc66"
}