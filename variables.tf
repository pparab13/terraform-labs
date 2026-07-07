variable "resourcegroup" {
  type = map(string)
}
variable "resourcegroup_location" {
  type = string
}
variable "storagaccountreplication" {
  type = string
}
variable "storageaccounttier" {
  type = string
}
variable "storagecontainer" {
  type = string
}
variable "storagecontaineraccess" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "vnetname" {
  type = map(object({
    name          = string
    resourcegroup = string
    address_space = list(string)
    subnet_name   = string
    subnet_prefix = list(string)
  }))
}
