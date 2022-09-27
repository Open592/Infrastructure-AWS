# Subdomains

# Examples:
#
# cdn.open592.com
# cdn.rc.open592.com
# cdn.wip.open592.com
resource "aws_route53_zone" "cdn_zone" {
  name = "cdn.${var.ENVIRONMENT_DOMAIN}"

  tags = {
    Environment = var.ENVIRONMENT
  }
}

resource "aws_route53_record" "cdn_ns" {
  name    = aws_route53_zone.cdn_zone.name
  ttl     = 30
  type    = "NS"
  zone_id = var.HOSTED_ZONE_ID
  records = aws_route53_zone.cdn_zone.name_servers
}
