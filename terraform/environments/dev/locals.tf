# Local values for the dev environment

locals {
  project = "enterprise-aks"

  resource_group_name = "rg-${var.environment}-${local.project}-001"

  common_tags = {
    Environment = var.environment
    Project     = local.project
    ManagedBy   = "Terraform"
  }
}
