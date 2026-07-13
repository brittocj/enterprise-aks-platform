# Main configuration for the dev environment
# TODO: Add module calls and environment-specific resources here

module "resource_group" {

  source = "../../modules/resource-group"

  name     = local.resource_group_name
  location = var.location
  tags     = local.common_tags
}
