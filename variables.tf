#Configure Azure Provider and declare all the variables that will be use

variable "subscription_id" {
   description = " Enter Azure Subscription ID "
}

variable "tenant_id" {
   description = " Enter Active Directory Tenant ID "
}

variable "client_id" {
   description = " Enter Service Principle ID "
}

variable "client_secret" {
   description = " Enter Service Principle Secret "
}

variable "resourcegroup_name" {
   description = "Resource GroupName"
}

variable "location" {
   description = " Resource Region"
}

variable "storage_name" {
   description= " Azure Storage Name"
}

variable "storage_account_tier" {
   description= "Azure Storage account tier"
}

variable "storage_account_replication" {
   description = "Azure Storage account replication"
}

variable "vnet_name" {
   description = "Azure Virtual Network"
}

variable "fwsubnet_name" {
 description = "Azure firewall Subnet in Virtual Network"
} 

variable "wlsubnet_name" {
 description = "Azure workload Subnet in Virtual Network"
} 
