resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  provider                      = azurerm.spoke
  name                          = var.spoke_to_hub != null ? [var.spoke_to_hub] : []
  resource_group_name           = var.resource_group_name
  virtual_network_name          = azurerm_virtual_network.vnet.name
  remote_virtual_network_id     = var.hub_vnet_id != null ? [var.hub_vnet_id] : []
  allow_virtual_network_access  = true
  allow_forwarded_traffic       = true
  depends_on                    = [azurerm_subnet.subnet_for_each]
}

resource "azurerm_virtual_network_peering" "hub_to_spoke" { 
  provider                      = azurerm.hub
  name                          = var.hub_to_spoke   != null ? [var.hub_to_spoke] : []
  resource_group_name           = var.hub_rg_name    != null ? [var.hub_rg_name] : []
  virtual_network_name          = var.hub_vnet_id    != null ? [var.hub_vnet_id] : []
  remote_virtual_network_id     = azurerm_virtual_network.myvnet.id
  allow_virtual_network_access  = true
  allow_forwarded_traffic       = true
  depends_on                    = [azurerm_virtual_network_peering.spoke_to_hub]
}
