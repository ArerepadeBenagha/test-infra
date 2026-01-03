terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  # Backend configuration for state storage in S3
  backend "s3" {
    bucket  = "controlinfra-terraform-state-stage"
    key     = "stage/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
