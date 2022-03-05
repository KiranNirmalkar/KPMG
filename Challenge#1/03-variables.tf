variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}
# 3. Resource Group Name
variable "resoure_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}
# 4. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
}
# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}
# 6. Subnet Name
variable "subnet_name" {
  description = "Virtual Network Subnet Name"
  type        = string
}
# 7. Public IP Name
variable "publicip_name" {
  description = "Public IP Name"
  type        = string
}
# 8. Network Interfance
variable "network_interface_name" {
  description = "Network Interface Name"
  type        = string
}

# 9. Virtual Machine Name
variable "virtual_machine_name" {
  description = "Virtual Machine Name"
  type        = string
}

#10. Storage account name
variable "storagename" {
  description = "storage account name"
  type        = string
}

#11. SQL server name
variable "sqlservername" {
  description = "sql servername name"
  type        = string
}

#12. SQL database name
variable "sqldatabasename" {
  description = "sql database name"
  type        = string
}