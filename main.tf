resource "azuredevops_resource_authorization" "resource_authorizations" {
  for_each = var.resource_authorizations

  authorized    = each.value.authorized
  project_id    = each.value.project_id
  resource_id   = each.value.resource_id
  definition_id = each.value.definition_id
  type          = each.value.type
}

