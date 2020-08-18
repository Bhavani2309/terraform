#Configure Azure Provider
provider "azurerm" {
    subscription_id=var.subscription_id
    tenant_id=var.tenant_id
    client_id=var.client_id
    client_secret=var.client_secret
    version="2.5.0"
    features { }
}

#Create Azure Resource Group
  resource "azurerm_resource_group" "resourcegroup"{
    name=var.resourcegroup_name
    location=var.location
  }
  
#Configure Azure Storage Account
   resource "azurerm_storage_account" "storage" {
      name=var.storage_name
      resource_group_name=azurerm_resource_group.resourcegroup.name
      location=azurerm_resource_group.resourcegroup.location
      account_tier=var.storage_account_tier
      account_replication_type=var.storage_account_replication
}   

#Configure Azure Virtual Network
   resource "azurerm_virtual_network" "vnet" {
       name = var.vnet_name
	   address_space = ["10.0.0.0/16"]
	   location = var.location
	   resource_group_name =azurerm_resource_group.resourcegroup.name
}	

#Configure Azure Subnet in Virtual Network
  resource "azurerm_subnet" "firewallsubnet" {
      name = var.fwsubnet_name
      resource_group_name = azurerm_resource_group.resourcegroup.name
      virtual_network_name = azurerm_virtual_network.vnet.name
      address_prefix = "10.0.1.0/24"
}   
	   
 resource "azurerm_subnet" "workloadSubnet" {
      name = var.wlsubnet_name
      resource_group_name = azurerm_resource_group.resourcegroup.name/
      virtual_network_name = azurerm_virtual_network.vnet.name
      address_prefix = "10.0.2.0/24"
}


   
   
   
   
