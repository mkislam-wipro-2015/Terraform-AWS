provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}

module "securitygroup" {
  source = "./modules/securitygroup"
  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source             = "./modules/alb"
  alb_security_group = module.securitygroup.alb_sg_id
  public_subnets     = module.vpc.public_subnet_ids
  vpc_id             = module.vpc.vpc_id
}

module "autoscaling" {
  source              = "./modules/autoscaling"
  vpc_id              = module.vpc.vpc_id
  subnets             = module.vpc.public_subnet_ids
  target_group_arn    = module.alb.target_group_arn
  ami_id              = var.ami_id
  instance_type       = var.instance_type
}

output "alb_dns" {
  value = module.alb.alb_dns_name
}
