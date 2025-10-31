module "ec2" {
    source = "../modules"
    sg_id = "sg-004e7a707bd1cf420"
    instance_type = "t3.small"
}

output "public_ip" {
   value =  module.ec2.public_ip
}