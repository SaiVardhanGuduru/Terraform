output "ec2_info" {
  #value       = aws_instance.expense
  value = aws_instance.expense[0].private_ip
}
