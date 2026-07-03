output "access_key" {
  value = azurerm_storage_account.storageaccount.primary_access_key
  sensitive = true
}