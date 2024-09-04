provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}

module "aws_cloudwatch_log_group" {
  source = "./modules/aws_cloudwatch_log_group"
  name = "cluster-logs"
}

module "aws_ecs_cluster" {
  source = "./modules/aws_ecs_cluster"
  name = "medusa-cluster"
  cloud_watch_log_group_name = module.aws_cloudwatch_log_group.name
}

module "aws_ecs_task_definition" {
  source = "./modules/aws_ecs_task_definition"
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "1024"
  memory = "2048"
  name = "medusa-backend"
  family = "medusa-task"
  image = var.image
  essential = true
  DATABASE_URL = var.db_url
  JWT_SECRET = var.jwt_secret
  COOKIE_SECRET = var.cookie_secret
}

module "aws_security_group" {
  source = "./modules/aws_security_group"
  vpc_id = var.vpc_id
}

module "aws_ecs_service" {
  source = "./modules/aws_ecs_service"
  name = "medusa-service"
  cluster = module.aws_ecs_cluster.id
  task_definition = module.aws_ecs_task_definition.arn
  desired_count = 1
  launch_type = "FARGATE"
  subnets = var.subnets
  security_groups = [module.aws_security_group.id]
  assign_public_ip = true
}