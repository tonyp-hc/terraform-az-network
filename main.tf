terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "ttp-rg" {
  name     = "${var.prefix}-rg"
  location = var.region
}

module "network" {
  source              = "app.terraform.io/TonyPulickal/network/azurerm"
  resource_group_name = "${var.prefix}-rg"
  address_space       = "172.16.0.0/16"
  subnet_prefixes     = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  tags = {
    environment = var.env
    owner       = var.owner
  }

  depends_on = [azurerm_resource_group.ttp-rg]
}
