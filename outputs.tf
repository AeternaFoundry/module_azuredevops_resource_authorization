output "resource_authorizations_id" {
  description = "Map of id values across all resource_authorizations, keyed the same as var.resource_authorizations"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.id }
}
output "resource_authorizations_authorized" {
  description = "Map of authorized values across all resource_authorizations, keyed the same as var.resource_authorizations"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.authorized }
}
output "resource_authorizations_definition_id" {
  description = "Map of definition_id values across all resource_authorizations, keyed the same as var.resource_authorizations"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.definition_id }
}
output "resource_authorizations_project_id" {
  description = "Map of project_id values across all resource_authorizations, keyed the same as var.resource_authorizations"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.project_id }
}
output "resource_authorizations_resource_id" {
  description = "Map of resource_id values across all resource_authorizations, keyed the same as var.resource_authorizations"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.resource_id }
}
output "resource_authorizations_type" {
  description = "Map of type values across all resource_authorizations, keyed the same as var.resource_authorizations"
  value       = { for k, v in azuredevops_resource_authorization.resource_authorizations : k => v.type }
}

