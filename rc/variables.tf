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

variable "APPLICATION_NAME" {
  default     = "open592"
  description = "Application name. (Defaults to 'open592')"
  type        = string
}

variable "ENVIRONMENT" {
  default     = "rc"
  description = "Development environment. (Defaults to 'rc')"
  type        = string
}
