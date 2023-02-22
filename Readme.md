# Enterprise Landing Zone Demo Global Azure Zaragoza 2022 

## Create Launchpad

```
# Create Resource Group
az group create -n rg-elztfstates-ne-001 -l northeurope --subscription caf-launchpad
 
# Create Storage Account
az storage account create -n stelztf -g rg-elztfstates-ne-001 -l northeurope --sku Standard_LRS --subscription caf-launchpad
 
# Create Storage Account Container
az storage container create -n tfstatedevops --subscription caf-launchpad --account-name stelztf
```

## Adjust providers.tf

Change subscription_ids and adjust your backend

## Customize settings 

Review settings.* files and customize, you can check https://registry.terraform.io/modules/Azure/caf-enterprise-scale/azurerm/latest and https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/wiki/Examples#advanced-level-300 to do it.



