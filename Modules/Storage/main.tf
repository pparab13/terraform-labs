resource "random_string" "storage_suffix" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}
resource "azurerm_storage_account" "storageaccount" {
  name = "storage${random_string.storage_suffix.result}"
  resource_group_name = "rg01"
  account_replication_type = "LRS"
  account_tier = "Standard"
  location = "eastus2"
  lifecycle {
    prevent_destroy = true
  }
}