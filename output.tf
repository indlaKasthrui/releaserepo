output "rgname" {
    value = azurerm_resource_group.example.name
    description = "this outputs the resourcegroup name"
  
}
output "rglocation" {
    value = azurerm_resource_group.example.location
    description = "this outputs the resourcegroup location"
  
}
output "mssqlservername" {
    value = azurerm_mssql_server.example.name
    description = "this outputs the mssqlservername"
  
}
output "mssqldatabasename" {
    value = azurerm_mssql_database.test.name
    description = "this outputs the mssqldatabasename"
  
}