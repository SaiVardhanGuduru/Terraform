output "ec2_info" {
  #value       = aws_instance.expense
  value = aws_instance.expense[count.index].private_ip
}
