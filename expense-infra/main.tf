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
  bastion_sg_id=module.sg.bastion_sg_id
  #app_alb_sg = module.sg.app_alb_sg
}

module "app_alb"{
  source = "./50-app-alb"
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  bastion_sg_id=module.sg.bastion_sg_id
  app_alb_sg = module.sg.app_alb_sg
}