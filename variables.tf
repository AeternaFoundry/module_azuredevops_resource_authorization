variable "resource_authorizations" {
  description = <<EOT
Map of resource_authorizations, attributes below
Required:
    - authorized
    - project_id
    - resource_id
Optional:
    - definition_id
    - type
EOT

  type = map(object({
    authorized    = bool
    project_id    = string
    resource_id   = string
    definition_id = optional(number)
    type          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.resource_authorizations : (
        length(trimspace(v.resource_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_authorizations : (
        v.definition_id == null || (v.definition_id >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_authorizations : (
        v.type == null || (contains(["endpoint", "queue", "variablegroup"], v.type))
      )
    ])
    error_message = "must be one of: \"endpoint\", \"queue\", \"variablegroup\""
  }
}

