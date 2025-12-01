/* output "azs_info" {
  value       = data.aws_availability_zones.available
}
 */

#  output "subnets_info"{
#     value = aws_subnet.public
#  }

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "database_subnet_ids" {
  value = module.vpc.database_subnet_ids
}

output "database_subnet_group_name" {
  value = module.vpc.expense.name
  
}