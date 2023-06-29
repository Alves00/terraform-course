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

/* resource "random_pet" "this" {
  length = 5
}

module "bucket" {
  source = "./s3_module"

  name = random_pet.this.id
} */

resource "random_pet" "website" {
  length = 5
}

module "website" {
  source = "./s3_module"

  name  = random_pet.website.id
  files = "${path.root}/website"

  acl = var.acl
}
