# -----------------------------------------------------------------------------
# Outputs
# -----------------------------------------------------------------------------

output "sns_drift_test_arn" {
  description = "ARN of the drift test SNS topic"
  value       = aws_sns_topic.drift_test.arn
}

output "sns_drift_test_name" {
  description = "Name of the drift test SNS topic"
  value       = aws_sns_topic.drift_test.name
}
