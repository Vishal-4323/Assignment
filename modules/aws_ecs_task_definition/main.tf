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
    environment = [
      {
        name  = "DATABASE_TYPE"
        value = "postgres"
      },
      {
        name  = "DATABASE_URL"
        value = var.db_url
      },
      {
        name  = "JWT_SECRET"
        value = "var.JWT_SECRET"
      },
      {
        name  = "COOKIE_SECRET"
        value = "var.COOKIE_SECRET"
      },
      {
        name  = "NODE_ENV"
        value = "production"
      },
      {
        name  = "NPM_CONFIG_PRODUCTION"
        value = "false"
      }
    ]
    portMappings = [{
      containerPort = 9000
      hostPort      = 9000
      protocol      = "tcp"
    }]
  }])
}