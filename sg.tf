module "dev_sg_1" {
  source      = "../modules/sg"
  vpc_id      = module.dev_vpc_1.vpc_id # ✅ Corrected reference
  vpc_name    = var.vpc_name            # ✅ Ensure this variable is declared
  environment = var.environment         # ✅ Ensure this variable is declared

  ingress_rules = [
    { port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }, # SSH
    { port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }, # HTTP
    { port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] } # HTTPS
  ]
}
locals {
  Owner      = "dev-Team"
  costcenter = "Hyd-8080"
  TeamDL     = "selvalakshmi21eceskct@gmail.com"
}

