locals {
  # StringList to List
  private_subnet_ids = var.private_subnet_ids[0]
  app_alb_sg_id = var.app_alb_sg.value
}