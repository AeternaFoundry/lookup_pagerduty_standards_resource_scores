data "pagerduty_standards_resource_scores" "standards_resource_scores_lookup" {
  for_each = var.standards_resource_scores_lookup

  id            = each.value.id
  resource_type = each.value.resource_type
}

