# Configure the Terraform provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "remote" {
    organization = "test_wowochi"

    workspaces {
      name = "squadron"
    }
  }
}
variable "access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "secret_access_key" {
  description = "AWS secret access key"
  type        = string
  sensitive   = true
}

# Provider configuration
provider "aws" {
  region = "us-east-1"
 access_key = var.access_key
  secret_key = var.secret_access_key
}

# Accessing a Terraform variable
resource "aws_s3_bucket" "example" {
  bucket ="wowchinub"
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
