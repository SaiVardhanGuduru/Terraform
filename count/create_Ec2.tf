resource "aws_instance" "expense" {
  count = length(var.instances)

  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment =="prod" ? "t3.medium" : "t3.micro"
  vpc_security_group_ids=[aws_security_group.allow_tls.id]

  tags= merge(
      var.ec2_tags,
      {
        Name=var.instances[count.index]
      }


    )
  
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_1"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}