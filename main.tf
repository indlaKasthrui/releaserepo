resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
resource "azurerm_mssql_server" "example" {
  name                         = var.mssqlservername
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = var.mssqlversion
  administrator_login          = var.mssqllogin
  administrator_login_password = var.mssqlpassword
  public_network_access_enabled = var.publicnetworkaccessenabled
}
resource "azurerm_mssql_database" "test" {
  name           = var.mssqldatabasename
  server_id      = azurerm_mssql_server.example.id
  collation      = var.collation
 # license_type   = "LicenseIncluded"
  max_size_gb    = var.size
  #read_scale     = true
  sku_name       = var.skuname
  #zone_redundant = true

}
