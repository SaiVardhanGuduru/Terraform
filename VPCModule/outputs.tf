# output "vpc_id" {
#   value = local.default_vpc_id
# }

output "vpc_id" {
  value = aws_vpc.main.id
 }