provider "azurerm:{

    features {}
subscription_id = "47add5f2-bd7d-4144-ae47-850119e05e5a"
    client_id = "b754d673-b422-4485-8c20-1e2f6a7bc9f4"
    client_secret = "i688Q~cJofHCX1HsTcXa4Cfi-5201XChB3YloaWG"
    tenant_id = "79a3f62e-280f-4139-9712-09090204daa9"
}

# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

# create resource group
resource "azurerm_resource_group" "rg" {
  name     = "spn_terraform_rg"
  location = "westus2"
}
