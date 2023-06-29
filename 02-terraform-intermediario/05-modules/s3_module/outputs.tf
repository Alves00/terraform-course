output "name" {
  value = aws_s3_bucket.this.id
}

output "arn" {
  value = aws_s3_bucket.this.arn
}

output "regional_domain_name" {
  value = aws_s3_bucket.this.bucket_regional_domain_name
}

output "domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "hosted_zone_id" {
  value = aws_s3_bucket.this.hosted_zone_id
}

output "s3_bucket_website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket_website_configuration.this.website_endpoint
}

output "files" {
  value = [for filename, data in module.objects : filename]
}
