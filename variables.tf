variable "encryption_at_rest_private_endpoints_lookup" {
  description = <<EOT
Map of encryption_at_rest_private_endpoints_lookup, attributes below
Required:
    - cloud_provider
    - project_id
EOT

  type = map(object({
    cloud_provider = string
    project_id     = string
  }))
}

