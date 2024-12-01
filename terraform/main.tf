module "network" {
  source = "./network"

  environment = var.environment
  app_name    = var.app_name
}

module "database" {
  source = "./database"

  environment         = var.environment
  app_name            = var.app_name
  vpc_id              = module.network.vpc_id
  public_subnet_cidrs = module.network.public_subnet_cidrs
  private_subnet_ids  = module.network.private_subnet_ids

  database_name     = var.database_name
  database_username = var.database_username
  database_password = var.database_password
}

