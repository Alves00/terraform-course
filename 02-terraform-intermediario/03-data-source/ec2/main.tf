terraform {
  required_version = "1.5.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }

  backend "s3" {
	bucket = "tfstate-378952644088"
	key = "dev/03-data-sources/terraform.tfstate"
	region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}
