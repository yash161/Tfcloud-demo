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
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_access_key
}

resource "aws_iam_user" "users" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}