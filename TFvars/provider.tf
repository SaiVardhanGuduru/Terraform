terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    
  }
}



# Provider for Account A (KodeKloud)
provider "aws" {
  alias  = "kodekloud"
  region = "us-east-1"
}

# Provider for Account B (Personal AWS - Route53)
provider "aws" {
  alias  = "personal"
  region = "us-east-1"
  access_key = var.personal_access_key
  secret_key = var.personal_secret_key
}
