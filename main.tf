# Configure the Terraform provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "remote" {
    organization = "your-organization"

    workspaces {
      name = "your-workspace"
    }
  }
}

# Provider configuration
provider "aws" {
  region = "us-east-1"
}

# Accessing a Terraform variable
resource "aws_s3_bucket" "example" {
  bucket ="wowchinub"
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
