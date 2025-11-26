module "vpc" {
  source  = "./00-vpc"
}
module "sg"{
    source = "./10-sg"
    vpc_id = module.vpc.vpc_id
}