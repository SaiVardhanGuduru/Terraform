terraform {
  
backend "s3" {
    bucket = "sai-tf-remote-state-29102"
    key    = "terraform-ec2-module" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}

# Provider for Account B (Personal AWS - Route53)
provider "aws" {
  alias  = "personal"
  region = "us-east-1"
  access_key = var.personal_access_key
  secret_key = var.personal_secret_key
}