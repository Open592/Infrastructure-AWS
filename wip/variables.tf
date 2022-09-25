variable "AWS_ACCESS_KEY" {
  default     = ""
  description = "Access key for AWS. This should NEVER be stored locally"
}

variable "AWS_SECRET_KEY" {
  default     = ""
  description = "Secret key for AWS. This should NEVER be stored locally"
}

variable "AWS_REGION" {
  default     = "us-west-2"
  description = "AWS region. (Defaults to 'us-west-2')"
}

variable "APPLICATION_NAME" {
  default     = "Open592"
  description = "Application name. (Defaults to 'Open592')"
}

variable "ENVIRONMENT" {
  default     = "wip"
  description = "Development environment. (Defaults to 'wip')"
}
