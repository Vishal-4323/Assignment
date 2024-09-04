provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}

module "aws_ecs_cluster" {
  source = "./modules/aws_ecs_cluster"
  name = "medusa-cluster"
}


