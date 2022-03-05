resource "azurerm_resource_group" "myrg" {
  name     = var.resoure_group_name
  location = var.resoure_group_location
}