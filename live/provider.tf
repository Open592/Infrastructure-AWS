provider "aws" {
  region     = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
    # For anyone using this as a base - you will need to update these
    organization = "Open592"

    workspaces {
      name = "Infrastructure-AWS-LIVE"
    }
  }
}
