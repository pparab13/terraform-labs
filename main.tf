module "ResourceGroup" {

  for_each                = var.resourcegroup
  source                  = "./Modules/ResourceGroup"
  resource_group_location = var.resourcegroup_location
  resource_group_name     = each.value
}

module "rg_prod" {
    providers = {
    azurerm = azurerm.prod
  }
  for_each                = var.resourcegroup
  source                  = "./Modules/ResourceGroup"
  resource_group_location = var.resourcegroup_location
  resource_group_name     = each.value
}

module "storage" {
  providers = {
    azurerm = azurerm.prod
  }
  source                     = "./Modules/Storage"
  location                   = var.resourcegroup_location
  resource_group_name        = module.rg_prod["name1"].rgname
  storageaccount_replication = var.storagaccountreplication
  storageaccounttier         = var.storageaccounttier
  storagecontainername       = var.storagecontainer
  containeraccesstype        = var.storagecontaineraccess
  tag                        = var.tags
}

module "Networking" {
  for_each      = var.vnetname
  source        = "./Modules/Networking"
  location      = var.resourcegroup_location
  vnet_name     = each.value.name
  resourcegroup = each.value.resourcegroup
  addressspace  = each.value.address_space
  subnet_name   = each.value.subnet_name
  subnet_prefix = each.value.subnet_prefix
}
output "naaccessme" {
  value     = module.storage.accesskey
  sensitive = true
}

