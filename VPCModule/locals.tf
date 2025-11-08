# locals{
    
#     default_vpc_id = data.aws_vpc.default.id
#     default_vpc_cidr = data.aws_vpc.default.cidr_block
# }

locals {
  resource_name = "${var.project_name}-${var.environment}"
}