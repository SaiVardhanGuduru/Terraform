terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "sai-tf-remote-state-291025"
    key    = "terraform-ec2-module" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}