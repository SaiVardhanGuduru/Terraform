module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/SaiVardhanGuduru/Terraform.git//VPCModule?ref=main"
    vpc_cidr=var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    vpc_name=var.vpc_name

    
    
}