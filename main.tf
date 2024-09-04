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


