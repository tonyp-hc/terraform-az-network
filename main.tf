module "network" {
  source              = "app.terraform.io/TonyPulickal/network/azurerm"
  vnet_name                = "${var.prefix}-vnet-tfe"
  resource_group_name = "${var.prefix}-rg-tfe"
  location            = "${var.region}"
  address_space       = "172.16.0.0/16"
  subnet_prefixes     = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  tags = {
    environment = "${var.env}"
    owner       = "${var.owner}"
  }
}
