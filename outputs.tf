output "topic_name" {
  value       = aws_sns_topic.this.name
  description = "string ||| Name of the SNS Topic"
}

output "topic_arn" {
  value       = aws_sns_topic.this.arn
  description = "string ||| ARN of the SNS Topic"
}

output "kms_key_id" {
  value       = aws_kms_key.this.id
  description = "string ||| ID of the KMS Key used to encrypt the SNS Topic"
}
