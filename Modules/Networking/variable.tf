variable "vnet_name" {
  type = string
}
variable "addressspace" {
  type = list(string)
}
variable "location" {
  type = string
}
variable "resourcegroup" {
  type = string
}
variable "subnet_name" {
  type = string
}
variable "subnet_prefix" {
  type = list(string)
}
