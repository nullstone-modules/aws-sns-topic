resource "aws_sns_topic" "this" {
  name = var.topic_name
  tags = local.tags

  kms_master_key_id = aws_kms_key.this.id
}

resource "aws_kms_key" "this" {
  description             = "KMS key for SNS topic: ${local.resource_name}"
  deletion_window_in_days = 7
  tags                    = local.tags
}
