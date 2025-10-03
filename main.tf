terraform {
  cloud {
    organization = "auth-learning"

    workspaces {
      name = "plan-filter-demo"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  # use a variable so changes can be simulated via workspace variables
  bucket_prefix = var.bucket_prefix

  tags = {
    Environment = var.tags_env
    Owner       = "demo-owner"
  }
}
