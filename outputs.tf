output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "alias_arn" {
  description = "ARN of the KMS alias"
  value       = try(aws_kms_alias.this[0].arn, null)
}

output "alias_name" {
  description = "Name of the KMS alias"
  value       = try(aws_kms_alias.this[0].name, null)
}

output "target_key_arn" {
  description = "ARN of the target KMS key"
  value       = try(aws_kms_alias.this[0].target_key_arn, null)
}
