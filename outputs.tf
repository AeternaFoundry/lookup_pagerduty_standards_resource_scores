output "standards_resource_scores_lookup_id" {
  description = "Map of id values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "standards_resource_scores_lookup_resource_type" {
  description = "Map of resource_type values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup except keys with no resource_type are omitted"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "standards_resource_scores_lookup_score" {
  description = "Map of score values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup except keys with no score are omitted"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.score if v.score != null && length(v.score) > 0 }
}
output "standards_resource_scores_lookup_standards" {
  description = "Map of standards values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup except keys with no standards are omitted"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.standards if v.standards != null && length(v.standards) > 0 }
}

