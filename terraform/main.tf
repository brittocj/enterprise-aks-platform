// Main Terraform configuration placeholder

module "networking" {

  source = "./modules/networking"

  resource_group_name = module.resource_group.name

  location = var.location

  vnet_name = "vnet-dev-001"

  address_space = [
    "10.100.0.0/16"
  ]

}
