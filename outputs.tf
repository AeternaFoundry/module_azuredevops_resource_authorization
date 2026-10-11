output "resource_authorizations_id" {
  description = "Map of id values across all resource_authorizations, keyed the same as var.resource_authorizations except keys with no id are omitted"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_authorizations_authorized" {
  description = "Map of authorized values across all resource_authorizations, keyed the same as var.resource_authorizations except keys with no authorized are omitted"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.authorized if v.authorized != null }
}
output "resource_authorizations_definition_id" {
  description = "Map of definition_id values across all resource_authorizations, keyed the same as var.resource_authorizations except keys with no definition_id are omitted"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.definition_id if v.definition_id != null }
}
output "resource_authorizations_project_id" {
  description = "Map of project_id values across all resource_authorizations, keyed the same as var.resource_authorizations except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "resource_authorizations_resource_id" {
  description = "Map of resource_id values across all resource_authorizations, keyed the same as var.resource_authorizations except keys with no resource_id are omitted"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "resource_authorizations_type" {
  description = "Map of type values across all resource_authorizations, keyed the same as var.resource_authorizations except keys with no type are omitted"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.type if v.type != null && length(v.type) > 0 }
}

