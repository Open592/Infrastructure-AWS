resource "aws_route53_zone" "wip-zone" {
  name = data.terraform_remote_state.root_domain.outputs.root_domain
}

resource "aws_route53_record" "wip-ns" {
  name    = aws_route53_zone.wip-zone.name
  ttl     = 30
  type    = "NS"
  zone_id = data.terraform_remote_state.root_domain.outputs.root_zone_id
  records = aws_route53_zone.wip-zone.name_servers
}

module "network" {
  source = "../modules/network"

  ENVIRONMENT        = var.ENVIRONMENT
  ENVIRONMENT_DOMAIN = aws_route53_zone.wip-zone.name
  HOSTED_ZONE_ID     = data.terraform_remote_state.root_domain.outputs.root_zone_id
}
