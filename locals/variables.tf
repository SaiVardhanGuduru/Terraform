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
    default = ["mysql", "backend", "frontend"]
}
variable "instance_type" {
    default = "t3.micro"
}
variable "environment" {
    default = "prod"
}

variable "ec2_tags" {
    type = map
    default = {
        Project = "expense"
        #Component = "backend"
        Environment = "dev"
        #Name = "expense-backend-dev"
    }
}

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

variable "sg_tags" {
    type = map
    default = {
        Name = "expense-backend-dev"
    }
}


variable "zone_id" {
    default = "Z0229472386CXICROSV7X"
}

variable "domain_name" {
    default = "saivardhanguduru.cfd"
}