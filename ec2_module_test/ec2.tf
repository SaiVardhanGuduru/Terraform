module "aws-ec2" {
    source = "../modules"
    sg_id = "sg-0be21d8310ac6b9ab"
    #instance_type = "t3.small"
    instance_type=var.instance_type
}

output "public_ip" {
   value =  module.aws-ec2.public_ip
}