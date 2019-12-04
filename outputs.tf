output "az_network_id" {
  description = "The id of the newly created vNet"
  value       = "${module.network.vnet_id}"
}

output "az_network_name" {
  description = "The Name of the newly created vNet"
  value       = "${module.network.vnet_name}"
}

output "az_network_location" {
  description = "The location of the newly created vNet"
  value       = "${module.network.vnet_location}"
}

output "az_network_address_space" {
  description = "The address space of the newly created vNet"
  value       = "${module.network.vnet_address_space}"
}

output "az_network_subnets" {
  description = "The ids of subnets created inside the newl vNet"
  value       = "${module.network.vnet_subnets}"
}
