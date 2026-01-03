# Infrastructure Environments

This directory contains separate Terraform configurations for different environments, each with their own isolated state files in S3.

## Directory Structure

```
environments/
├── stage/          # Staging environment
│   └── *.tf        # Terraform configuration files
└── prod/           # Production environment
    └── *.tf        # Terraform configuration files
```

## Environment Details

### Stage Environment
- **Environment**: `stage`
- **State File**: `s3://Controlinfra-terraform-state-prod/stage/terraform.tfstate`
- **Purpose**: Pre-production testing and validation

### Production Environment
- **Environment**: `prod`
- **State File**: `s3://Controlinfra-terraform-state-prod/prod/terraform.tfstate`
- **Purpose**: Production workloads

## Usage

### Initialize and Apply Stage Environment

```bash
cd environments/stage
terraform init
terraform plan
terraform apply
```

### Initialize and Apply Production Environment

```bash
cd environments/prod
terraform init
terraform plan
terraform apply
```

## State File Isolation

Each environment maintains its own state file in S3:
- Stage: `stage/terraform.tfstate`
- Prod: `prod/terraform.tfstate`

This ensures complete isolation between environments and prevents accidental modifications to production resources when working with staging.

## AWS Credentials

AWS credentials should be provided via environment variables:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_REGION`

## Best Practices

1. Always run `terraform plan` before `terraform apply`
2. Review changes carefully before applying to production
3. Keep the Terraform code identical between environments (only tfvars should differ)
4. Use separate AWS credentials with appropriate permissions for each environment
