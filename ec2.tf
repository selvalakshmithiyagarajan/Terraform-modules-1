module "prod_ec2_1" {
  source          = "../modules/compute"
  environment     = var.environment
  amis            = var.amis
  selected_region = var.selected_region
  key_name        = var.key_name

  public_subnet     = module.prod_vpc_1.public_subnet_ids
  private_subnet    = module.prod_vpc_1.private_subnet_ids
  vpc_name          = var.vpc_name
  security_group_id = module.prod_sg_1.security_group_id
}
