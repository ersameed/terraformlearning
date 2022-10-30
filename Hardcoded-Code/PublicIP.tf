resource "azurerm_public_ip" "example" {
  name                = "TFPublicIp1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
}
resource "azurerm_public_ip" "example2" {
  name                = "TFPublicIp2"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
}
output "PublicIP" {
    value = azurerm_public_ip.example2.ip_address

}
output "fqdn" {
    value = azurerm_public_ip.example2.fqdn
    
}