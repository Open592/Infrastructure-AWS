variable "ENVIRONMENT" {
  description = "Development environment. (wip,rc,live)"
  type        = string
}

variable "ENVIRONMENT_DOMAIN" {
  description = "Domain name for the environment. (Example: wip.open592.com)"
  type        = string
}

variable "HOSTED_ZONE_ID" {
  description = "Hosted zone ID for the domain."
  type        = string
}
