module "dev_ec2_1" {
  source      = "../modules/compute"
  environment = module.dev_vpc_1.environment
  amis = {
    us-east-1 = "ami-04b4f1a9cf54c11d0"
    us-east-2 = "ami-04b4f1a9cf54c11d0"
  }
  selected_region   = var.selected_region # ✅ Fixed syntax
  key_name          = "mykey"
  public_subnet     = module.dev_vpc_1.public_subnet_ids
  private_subnet    = module.dev_vpc_1.private_subnet_ids
  vpc_name          = module.dev_vpc_1.vpc_name
  security_group_id = module.dev_sg_1.security_group_id
}






