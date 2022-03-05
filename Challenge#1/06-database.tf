resource "azurerm_storage_account" "mystorage" {
  name                     = "${var.storagename}${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_mssql_server" "mysqlserver" {
  name                         = "${var.sqlservername}-${random_string.myrandom.id}"
  resource_group_name          = azurerm_resource_group.myrg.name
  location                     = azurerm_resource_group.myrg.location
  version                      = "12.0"
  administrator_login          = "sqllogin"
  administrator_login_password = "aA1234567890"
}

resource "azurerm_mssql_database" "mysqldatabase" {
  name      = "$(var.sqldatabasename)-${random_string.myrandom.id}"
  server_id = azurerm_mssql_server.mysqlserver.id
}

resource "azurerm_mssql_database_extended_auditing_policy" "sqldbauditpolicy" {
  database_id                             = azurerm_mssql_database.mysqldatabase.id
  storage_endpoint                        = azurerm_storage_account.mystorage.primary_blob_endpoint
  storage_account_access_key              = azurerm_storage_account.mystorage.primary_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 6
}