output "bastion_sg_id" {
  value = module.bastion_sg.sg_id
}

output "app_alb_sg_id" {
  value = module.app_alb_sg.sg_id
}

output "mysql_sg_id" {
  value = module.mysql_sg.sg_id
  
}