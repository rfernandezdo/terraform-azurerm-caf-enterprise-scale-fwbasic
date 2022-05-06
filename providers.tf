terraform {
  backend "azurerm" {
    resource_group_name  = "rg-elztfstates-ne-001"
    storage_account_name = "stelztf"
    container_name       = "tfstatedevops"
    key                  = "terraformelzdemo.tfstate"
  }
}
# Declare a standard provider block using your preferred configuration.
# This will target the "default" Subscription and be used for the deployment of all "Core resources".
provider "azurerm" {
  features {}
}

# Declare an aliased provider block using your preferred configuration.
# This will be used for the deployment of all "Connectivity resources" to the specified `subscription_id`.
provider "azurerm" {
  alias           = "connectivity"
  subscription_id = "11111111-1111-1111-1111-111111111111"  
  features {}
}

# Declare a standard provider block using your preferred configuration.
# This will be used for the deployment of all "Management resources" to the specified `subscription_id`.
provider "azurerm" {
  alias           = "management"
  subscription_id = "11111111-1111-1111-1111-111111111111"
  features {}
}

# Declare a standard provider block using your preferred configuration.
# This will be used for the deployment of all "identity resources" to the specified `subscription_id`.
provider "azurerm" {
  alias           = "identity"
  subscription_id = "11111111-1111-1111-1111-111111111111"
  features {}
}