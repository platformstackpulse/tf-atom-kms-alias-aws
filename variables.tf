variable "target_key_id" {
  description = "ID or ARN of the KMS key to create an alias for"
  type        = string
  validation {
    condition     = length(var.target_key_id) > 0
    error_message = "target_key_id must not be empty."
  }
}
