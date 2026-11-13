output "standards_resource_scores_lookup_id" {
  description = "Map of id values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.id }
}
output "standards_resource_scores_lookup_resource_type" {
  description = "Map of resource_type values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.resource_type }
}
output "standards_resource_scores_lookup_score" {
  description = "Map of score values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.score }
}
output "standards_resource_scores_lookup_standards" {
  description = "Map of standards values across all standards_resource_scores_lookup, keyed the same as var.standards_resource_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resource_scores.standards_resource_scores_lookup : k => v.standards }
}

