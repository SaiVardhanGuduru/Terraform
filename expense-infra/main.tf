module "vpc" {
  source  = "./00-vpc"
}
module "sg"{
    source = "./10-sg"
    vpc_id = module.vpc.vpc_id
}
module "bastion"{
  source = "./20-bastion"
  public_subnet_ids = module.vpc.public_subnet_ids
}