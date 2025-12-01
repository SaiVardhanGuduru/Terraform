locals {
  resource_name = "${var.project_name}-${var.environment}"
  mysql_sg_id = var.mysql_sg_id
  database_subnet_group_name = var.database_subnet_group_name
}