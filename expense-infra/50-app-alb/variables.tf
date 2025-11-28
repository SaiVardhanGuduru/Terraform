variable "vpc_id" {
  
}

variable "public_subnet_ids" {
  
}
variable "private_subnet_ids" {
  
}
variable "bastion_sg_id" {
  
}
variable "app_alb_sg_id" {
  
}



variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}


variable "zone_id" {
    default = "Z0229472386CXICROSV7X"
}

variable "domain_name" {
    default = "saivardhanguduru.cfd"
}