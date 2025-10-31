variable "personal_access_key" {
  description = "Access key for personal AWS account"
  type        = string
}

variable "personal_secret_key" {
  description = "Secret key for personal AWS account"
  type        = string
  sensitive   = true
}


variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}
variable "instances" {
    default = ["frontend"]
}
variable "instance_type" {
    default = {
        dev = "t3.micro"
        prod = "t3.small"
    }
}
/* variable "environment" {
    
} */


variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        Terraform = "true"
    }
}


variable "zone_id" {
    default = "Z0229472386CXICROSV7X"
}

variable "domain_name" {
    default = "saivardhanguduru.cfd"
}