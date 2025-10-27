data "aws_instances" "all_running" {
  provider = aws

  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}

# You can then get the list of instance IDs like this:
output "running_instance_ids" {
  value = data.aws_instances.all_running.ids
}