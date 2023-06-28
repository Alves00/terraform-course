terraform {
  required_version = "1.5.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-125461231245212"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Matheus Alves"
    UpdateAt    = "2023-06-28"
  }
}
