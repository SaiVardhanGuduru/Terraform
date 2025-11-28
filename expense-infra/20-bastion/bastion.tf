resource "aws_instance" "this" {
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [var.bastion_sg_id]
  instance_type          = "t3.micro"
  subnet_id   = local.public_subnet_id

  # 20GB is not enough
  root_block_device {
    volume_size = 30  
    volume_type = "gp3"  # Use gp3 for better performance (optional)
  }
  #user_data = file("bastion.sh")
  
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-bastion"
    }
  )
}