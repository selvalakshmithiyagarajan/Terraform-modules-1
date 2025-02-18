module "prod_vpc_1" {
  source      = "../modules/network"
  vpc_cidr    = "192.168.0.0/16"
  vpc_name    = var.vpc_name
  environment = var.environment

  public_cidr_block  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  private_cidr_block = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
module "prod_sg_1" {
  source      = "../modules/sg"
  vpc_id      = module.prod_vpc_1.vpc_id
  vpc_name    = var.vpc_name
  environment = var.environment

  ingress_rules = [
    { port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }, # SSH
    { port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }, # HTTP
    { port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] } # HTTPS
  ]
}
