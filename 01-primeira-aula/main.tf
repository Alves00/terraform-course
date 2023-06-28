terraform {
	required_version = "1.5.1"

	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "5.5.0"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-1254612312"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}
