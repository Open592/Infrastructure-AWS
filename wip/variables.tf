variable "ROOT_DOMAIN" {
  description = "Root domain for the project. (Example: open592.com)"
  type        = string
}

variable "APPLICATION_NAME" {
  default     = "open592"
  description = "Application name. (Defaults to 'open592')"
  type        = string
}

variable "ENVIRONMENT" {
  default     = "wip"
  description = "Development environment. (Defaults to 'wip')"
  type        = string
}

variable "ENVIRONMENT_DOMAIN" {
  description = "Domain name for the environment. (Example: wip.open592.com)"
  type        = string
}

variable "AWS_ACCESS_KEY" {
  default     = ""
  description = "Access key for AWS. This should NEVER be stored locally"
  type        = string
}

variable "AWS_SECRET_KEY" {
  default     = ""
  description = "Secret key for AWS. This should NEVER be stored locally"
  type        = string
}

variable "AWS_REGION" {
  default     = "us-west-2"
  description = "AWS region. (Defaults to 'us-west-2')"
  type        = string
}

variable "AWS_HOSTED_ZONE_ID" {
  description = "The hosted zone ID for the root domain."
  type        = string
}
