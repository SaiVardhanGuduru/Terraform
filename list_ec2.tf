list "aws_instance" "example" {
  provider = aws

  config {
    filter {
      name   = "instance-state-name"
      values = ["running"]
    }
  }
}