data "mongodbatlas_encryption_at_rest_private_endpoints" "encryption_at_rest_private_endpoints_lookup" {
  for_each = var.encryption_at_rest_private_endpoints_lookup

  cloud_provider = each.value.cloud_provider
  project_id     = each.value.project_id
}

