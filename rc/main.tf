resource "aws_route53_zone" "rc-zone" {
  name = var.ENVIRONMENT_DOMAIN
}

resource "aws_route53_record" "rc-ns" {
  name    = aws_route53_zone.rc-zone.name
  ttl     = 30
  type    = "NS"
  zone_id = var.AWS_HOSTED_ZONE_ID
  records = aws_route53_zone.rc-zone.name_servers
}

module "network" {
  source = "../modules/network"

  ENVIRONMENT        = var.ENVIRONMENT
  ENVIRONMENT_DOMAIN = aws_route53_zone.rc-zone.name
  HOSTED_ZONE_ID     = var.AWS_HOSTED_ZONE_ID
}
