resource "aws_route53_zone" "wip-zone" {
  name = var.ENVIRONMENT_DOMAIN
}

resource "aws_route53_record" "wip-ns" {
  name    = aws_route53_zone.wip-zone.name
  ttl     = 30
  type    = "NS"
  zone_id = var.ROOT_HOSTED_ZONE_ID
  records = aws_route53_zone.wip-zone.name_servers
}

module "network" {
  source = "../modules/network"

  ENVIRONMENT        = var.ENVIRONMENT
  ENVIRONMENT_DOMAIN = aws_route53_zone.wip-zone.name
  HOSTED_ZONE_ID     = var.ROOT_HOSTED_ZONE_ID
}
