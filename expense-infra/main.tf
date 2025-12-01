module "vpc" {
  source  = "./00-vpc"
  providers = {
    aws = aws
  }
}
module "sg"{
    source = "./10-sg"
    providers = {
    aws = aws
  }
    vpc_id = module.vpc.vpc_id
}
module "bastion"{
  source = "./20-bastion"
  providers = {
    aws = aws
  }
  public_subnet_ids = module.vpc.public_subnet_ids
  bastion_sg_id=module.sg.bastion_sg_id
  #app_alb_sg = module.sg.app_alb_sg
}

module "app_alb"{
  source = "./50-app-alb"
  providers = {
    aws          = aws
    aws.personal = aws.personal
  }

  vpc_id = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  bastion_sg_id=module.sg.bastion_sg_id
  app_alb_sg_id = module.sg.app_alb_sg_id
   
}

module "database_rds"{
  source = "./40-RDS"
  providers = {
    aws          = aws
    aws.personal = aws.personal
  }
  database_subnet_group_name = module.vpc.database_subnet_group_name
  mysql_sg_id = module.sg.mysql_sg_id





}