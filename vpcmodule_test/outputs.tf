/* output "azs_info" {
  value       = data.aws_availability_zones.available
}
 */

#  output "subnets_info"{
#     value = aws_subnet.public
#  }

output "vpc_id" {
  value = module.aws_vpc.main.id
}

output "public_subnet_ids" {
  value = module.aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = module.aws_subnet.private[*].id
}

output "database_subnet_ids" {
  value = module.aws_subnet.database[*].id
}