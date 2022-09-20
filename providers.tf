terraform {
  required_version = "~>1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.3"
    }
  }

  cloud {
    organization = "rocknrolldevs"

    workspaces {
      name = "domain"
    }
  }
}

provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]

  default_tags {
    tags = {
      Environment = "Terraform"
    }
  }
}

