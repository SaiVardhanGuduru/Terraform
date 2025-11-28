module "mysql_sg" {
    #source = "../terraform-aws-securitygroup"
    source = "git::https://github.com/SaiVardhanGuduru/Terraform.git//terraform-aws-securitygroup?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "Created for MySQL instances in expense dev"
    #vpc_id = data.aws_ssm_parameter.vpc_id.value
    vpc_id=var.vpc_id
    common_tags = var.common_tags
}




module "bastion_sg" {
    source = "git::https://github.com/SaiVardhanGuduru/Terraform.git//terraform-aws-securitygroup?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "bastion"
    sg_description = "Created for bastion instances in expense dev"
    #vpc_id = data.aws_ssm_parameter.vpc_id.value
    vpc_id=var.vpc_id
    common_tags = var.common_tags
}

# ports 22, 443, 1194, 943 --> VPN ports
module "vpn_sg" {
    source = "git::https://github.com/SaiVardhanGuduru/Terraform.git//terraform-aws-securitygroup?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "vpn"
    sg_description = "Created for VPN instances in expense dev"
    #vpc_id = data.aws_ssm_parameter.vpc_id.value
    vpc_id=var.vpc_id
    common_tags = var.common_tags
}



module "app_alb_sg" {
    source = "git::https://github.com/SaiVardhanGuduru/Terraform.git//terraform-aws-securitygroup?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "app-alb"
    sg_description = "Created for backend ALB in expense dev"
    vpc_id = var.vpc_id
    common_tags = var.common_tags
}
