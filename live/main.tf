module "network" {
  source = "../modules/network"

  ENVIRONMENT        = var.ENVIRONMENT
  ENVIRONMENT_DOMAIN = var.ROOT_DOMAIN
  HOSTED_ZONE_ID     = var.AWS_HOSTED_ZONE_ID
}
