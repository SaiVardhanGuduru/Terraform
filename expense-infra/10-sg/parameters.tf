resource "aws_ssm_parameter" "mysql_sg_id" {
  name  = "/${var.project_name}/${var.environment}/mysql_sg_id"
  type  = "String"
  value = module.mysql_sg.sg_id
}


resource "aws_ssm_parameter" "bastion_sg_id" {
  name  = "/${var.project_name}/${var.environment}/bastion_sg_id"
  type  = "String"
  value = module.bastion_sg.sg_id
}

resource "aws_ssm_parameter" "app_alb_sg" {
  name  = "/${var.project_name}/${var.environment}/app_alb_sg"
  type  = "String"
  value = module.app_alb_sg.sg_id
}