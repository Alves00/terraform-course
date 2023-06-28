locals {
  common_tags = {
    Service     = "Terraform Course"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Matheus Alves"
  }
  ip_filepath = "ips.json"
}
