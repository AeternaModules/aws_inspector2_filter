output "inspector2_filters_action" {
  description = "Map of action values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.action if v.action != null && length(v.action) > 0 }
}
output "inspector2_filters_arn" {
  description = "Map of arn values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "inspector2_filters_description" {
  description = "Map of description values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "inspector2_filters_filter_criteria" {
  description = "Map of filter_criteria values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.filter_criteria if v.filter_criteria != null && length(v.filter_criteria) > 0 }
}
output "inspector2_filters_name" {
  description = "Map of name values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "inspector2_filters_reason" {
  description = "Map of reason values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.reason if v.reason != null && length(v.reason) > 0 }
}
output "inspector2_filters_region" {
  description = "Map of region values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "inspector2_filters_tags" {
  description = "Map of tags values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "inspector2_filters_tags_all" {
  description = "Map of tags_all values across all inspector2_filters, keyed the same as var.inspector2_filters"
  value       = { for k, v in aws_inspector2_filter.inspector2_filters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

