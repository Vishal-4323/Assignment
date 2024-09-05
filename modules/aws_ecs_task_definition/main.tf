resource "aws_ecs_task_definition" "medusa_task" {
  family = var.family
  network_mode = var.network_mode
  requires_compatibilities = var.requires_compatibilities
  cpu = var.cpu
  memory = var.memory
  container_definitions = jsonencode([{
    name = var.name
    image = var.image
    essential = var.essential
    portMappings = [{
      containerPort = 8000
      hostPort      = 8000
      protocol      = "tcp"
    }]
  }])
}