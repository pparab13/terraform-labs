module "ResourceGroup" {
  source                  = "./Modules/ResourceGroup"
  resource_group_location = var.resourcegroup_location
  resource_group_name     = var.resourcegroup
}

module "storage" {
  source                     = "./Modules/Storage"
  location                   = var.resourcegroup_location
  resource_group_name        = var.resourcegroup
  storageaccount_replication = var.storagaccountreplication
  storageaccounttier         = var.storageaccounttier
  storagecontainername       = var.storagecontainer
  containeraccesstype        = var.storagecontaineraccess
}

output "naaccessme" {
  value = module.storage.access_key
  sensitive = true
}

output "containerurl" {
  value = module.storage.containerurl
}
