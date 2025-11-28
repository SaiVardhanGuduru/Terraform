terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    
  }
  
}
provider "aws" {
  alias = "personal"
}
