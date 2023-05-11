



# Map each module provider to their corresponding `azurerm` provider using the providers input object
module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "4.0.1"

  providers = {
    azurerm              = azurerm
    azurerm.management   = azurerm.management
    azurerm.connectivity = azurerm.connectivity
    azurerm.identity = azurerm.identity
  }

  # Default location

  default_location = var.management_resources_location
  
  # Set the required input variable `root_parent_id` using the Tenant ID from the un-aliased provider
  root_parent_id           = data.azurerm_client_config.core.tenant_id
  root_id = var.root_id
  root_name = var.root_name
  library_path   = "${path.root}/lib"

  # Enable deployment of the management resources, using the management
  # aliased provider to populate the correct Subscription ID
  deploy_management_resources    = var.deploy_management_resources
  subscription_id_management     = data.azurerm_client_config.management.subscription_id   
  configure_management_resources = local.configure_management_resources

  # Enable deployment of the connectivity resources, using the connectivity
  # aliased provider to populate the correct Subscription ID
  deploy_connectivity_resources    = var.deploy_connectivity_resources
  subscription_id_connectivity     = data.azurerm_client_config.connectivity.subscription_id
  configure_connectivity_resources = local.configure_connectivity_resources


  # Enable deployment of the identity resources, using the identity
  # aliased provider to populate the correct Subscription ID
  deploy_identity_resources    = var.deploy_identity_resources
  subscription_id_identity     = data.azurerm_client_config.identity.subscription_id
  configure_identity_resources = local.configure_identity_resources 
  


  # insert additional optional input variables here
  deploy_corp_landing_zones = var.deploy_corp_landing_zones
  deploy_online_landing_zones = var.deploy_online_landing_zones

}