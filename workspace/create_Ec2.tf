resource "aws_instance" "expense" {
  count = length(var.instances)

  ami           = "ami-09c813fb71547fc4f"
  instance_type = lookup(var.instance_type,terraform.workspace)
  vpc_security_group_ids=[aws_security_group.allow_tls.id]

  tags= merge(
     var.common_tags,
     {
      Name="${var.common_tags.project}-${terraform.workspace}-${var.instances[count.index]}"

     }
    )
  
}

resource "aws_security_group" "allow_tls" {
  name        = "${var.common_tags.project}-${terraform.workspace}"
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
    Name = "${var.common_tags.project}-${terraform.workspace}"
  }
}