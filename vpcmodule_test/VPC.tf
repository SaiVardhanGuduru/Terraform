module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/SaiVardhanGuduru/Terraform/tree/main/VPCModule.git?ref=main"
    
    
}