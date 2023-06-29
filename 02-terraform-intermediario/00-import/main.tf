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

resource "aws_s3_bucket" "manual" {
  bucket = "my-fantastic-bucket-21554122"

  tags = {
    ManagedBy = "Terraform"
    Imported  = "2023-06-28"
  }
}
