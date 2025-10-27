resource "aws_instance" "example" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.ec2_tags.Environment =="prod" ? "t2.medium" : "t3.micro"
  vpc_security_group_ids=[aws_security_group.allow_tls.id]

  tags = {
    Name = "created from terraform"
  }
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