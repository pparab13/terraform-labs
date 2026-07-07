
/*terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.80"
    }
  }
}*/

resource "random_string" "storage_suffix" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}
resource "azurerm_storage_account" "storage" {
  name                     = "storage${random_string.storage_suffix.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storageaccounttier
  account_replication_type = var.storageaccount_replication
  depends_on               = [var.resource_group_name]
  tags                     = var.tag
}
/* lifecycle {
    prevent_destroy = true
  }*/
resource "azurerm_storage_container" "Container" {
  name                  = var.storagecontainername
  container_access_type = var.containeraccesstype
  storage_account_name  = azurerm_storage_account.storage.name
  depends_on            = [azurerm_storage_account.storage]
}