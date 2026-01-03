# -----------------------------------------------------------------------------
# Controlinfra - Minimal Test Infrastructure for Drift Detection
# -----------------------------------------------------------------------------
# This is a FREE resource (SNS topics have no base cost)
# Used to test drift detection without incurring AWS costs

locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

# Simple SNS topic for testing drift detection (FREE)
resource "aws_sns_topic" "drift_test" {
  name = "${local.name_prefix}-drift-test"

  tags = {
    Name        = "${local.name_prefix}-drift-test"
    Environment = var.environment
    Purpose     = "Drift detection testing"
  }
}
