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
