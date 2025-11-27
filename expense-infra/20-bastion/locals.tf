locals {
  public_subnet_id = split(",", var.public_subnet_ids.value)[0]
  
}