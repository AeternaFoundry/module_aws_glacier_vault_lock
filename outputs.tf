output "glacier_vault_locks_id" {
  description = "Map of id values across all glacier_vault_locks, keyed the same as var.glacier_vault_locks"
  value       = { for k, v in aws_glacier_vault_lock.glacier_vault_locks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glacier_vault_locks_complete_lock" {
  description = "Map of complete_lock values across all glacier_vault_locks, keyed the same as var.glacier_vault_locks"
  value       = { for k, v in aws_glacier_vault_lock.glacier_vault_locks : k => v.complete_lock if v.complete_lock != null }
}
output "glacier_vault_locks_ignore_deletion_error" {
  description = "Map of ignore_deletion_error values across all glacier_vault_locks, keyed the same as var.glacier_vault_locks"
  value       = { for k, v in aws_glacier_vault_lock.glacier_vault_locks : k => v.ignore_deletion_error if v.ignore_deletion_error != null }
}
output "glacier_vault_locks_policy" {
  description = "Map of policy values across all glacier_vault_locks, keyed the same as var.glacier_vault_locks"
  value       = { for k, v in aws_glacier_vault_lock.glacier_vault_locks : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "glacier_vault_locks_region" {
  description = "Map of region values across all glacier_vault_locks, keyed the same as var.glacier_vault_locks"
  value       = { for k, v in aws_glacier_vault_lock.glacier_vault_locks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glacier_vault_locks_vault_name" {
  description = "Map of vault_name values across all glacier_vault_locks, keyed the same as var.glacier_vault_locks"
  value       = { for k, v in aws_glacier_vault_lock.glacier_vault_locks : k => v.vault_name if v.vault_name != null && length(v.vault_name) > 0 }
}

