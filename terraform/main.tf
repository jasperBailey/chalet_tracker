module "vpc" {
  source                    = "./modules/networking"
  vpc_name                  = "chalet-tracker-vpc"
  vpc_cidr_block            = "10.0.0.0/16"
  public_subnet_cidrs       = ["10.0.1.0/24", "10.0.2.0/24"]
  subnet_availability_zones = ["eu-west-2a", "eu-west-2b"]
  ecs_sg_name               = "ecs-security-group"
  alb_sg_name               = "alb-security-group"
}

module "alb" {
  source            = "./modules/alb"
  alb_sg_id         = module.vpc.alb_sg_id
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_id
  tg_port           = 3000
}

module "ecs" {
  source         = "./modules/ecs"
  vpc_id         = module.vpc.vpc_id
  ecs_sg_id      = module.vpc.ecs_sg_id
  alb_sg_id      = module.vpc.alb_sg_id
  http_listen_id = module.alb.http_listen_id
  subnet_ids     = module.vpc.public_subnet_id
  tg_arn         = module.alb.tg_arn
  container_port = 3000
  host_port      = 3000
  memory         = 1024
  cpu            = 512
}