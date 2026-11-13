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
  validation {
    condition = alltrue([
      for k, v in var.standards_resource_scores_lookup : (
        contains(["technical_services"], v.resource_type)
      )
    ])
    error_message = "must be one of: \"technical_services\""
  }
}

