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
      name = "Infrastructure-AWS-RC"
    }
  }
}

# Provides root domain details
data "terraform_remote_state" "root_domain" {
  backend = "remote"

  # For anyone using this as a base - you will need to update these
  config = {
    organization = "Open592"

    workspaces = {
      name = "Infrastructure-open592-com"
    }
  }
}
