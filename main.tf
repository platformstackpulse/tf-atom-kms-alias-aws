resource "aws_kms_alias" "this" {
  count = module.this.enabled ? 1 : 0

  name          = "alias/${module.this.id}"
  target_key_id = var.target_key_id
}
