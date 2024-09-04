resource "aws_ecs_cluster" "medusa_cluster" {
  name = var.name
}