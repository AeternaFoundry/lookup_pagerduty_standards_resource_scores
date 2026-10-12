variable "standards_resource_scores_lookup" {
  description = <<EOT
Map of standards_resource_scores_lookup, attributes below
Required:
    - id
    - resource_type
EOT

  type = map(object({
    id            = string
    resource_type = string
  }))
}

