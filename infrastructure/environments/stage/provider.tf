# AWS Provider Configuration
# Credentials are provided via environment variables:
# - AWS_ACCESS_KEY_ID
# - AWS_SECRET_ACCESS_KEY
# - AWS_REGION

provider "aws" {
  region = var.aws_region
  # Credentials provided via environment variables:
  # AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY

  default_tags {
    tags = {
      Project     = "Controlinfra"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}
