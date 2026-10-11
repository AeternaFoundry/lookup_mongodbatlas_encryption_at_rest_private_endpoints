output "encryption_at_rest_private_endpoints_lookup_cloud_provider" {
  description = "Map of cloud_provider values across all encryption_at_rest_private_endpoints_lookup, keyed the same as var.encryption_at_rest_private_endpoints_lookup except keys with no cloud_provider are omitted"
  value       = { for k, v in data.mongodbatlas_encryption_at_rest_private_endpoints.encryption_at_rest_private_endpoints_lookup : k => v.cloud_provider if v.cloud_provider != null && length(v.cloud_provider) > 0 }
}
output "encryption_at_rest_private_endpoints_lookup_project_id" {
  description = "Map of project_id values across all encryption_at_rest_private_endpoints_lookup, keyed the same as var.encryption_at_rest_private_endpoints_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_encryption_at_rest_private_endpoints.encryption_at_rest_private_endpoints_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "encryption_at_rest_private_endpoints_lookup_results" {
  description = "Map of results values across all encryption_at_rest_private_endpoints_lookup, keyed the same as var.encryption_at_rest_private_endpoints_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_encryption_at_rest_private_endpoints.encryption_at_rest_private_endpoints_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

