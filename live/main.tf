module "network" {
  source = "../modules/network"

  ENVIRONMENT        = var.ENVIRONMENT
  ENVIRONMENT_DOMAIN = data.terraform_remote_state.root_domain.outputs.root_domain
  HOSTED_ZONE_ID     = data.terraform_remote_state.root_domain.outputs.root_zone_id
}
