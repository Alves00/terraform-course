/* output "bucket-name" {
  value = module.bucket.name
}

output "bucket-arn" {
  value = module.bucket.arn
} */

output "bucket-website-name" {
  value = module.website.name
}

output "bucket-website-arn" {
  value = module.website.arn
}

output "bucket-website-endpoint" {
  value = module.website.s3_bucket_website_endpoint
}

output "bucket-website-files" {
  value = module.website.files
}
