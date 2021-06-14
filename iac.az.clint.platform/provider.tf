provider "azurerm" {
subscription_id = var.subscription_id
client_id= var.client_id
client_secret = var.client_secret
tenant_id= var.tenant_id
skip_provider_registration=true
version"=2.46.0"  // "=2.0.0"
features{}
}


terraform{
backend "azurerm" {
        resource_group_name = var.tfstate_resource_group_name
        storage_account_name = var.tfstate_storage_account_name
        container_name = var.tfstate_container_name
        key = var.tfstate_storage_account_key
        access_key = var.tfstate_storage_account_access_key
}
}