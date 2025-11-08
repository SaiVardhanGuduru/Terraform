module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/SaiVardhanGuduru/Terraform.git//VPCModule?ref=main"
    
    
}