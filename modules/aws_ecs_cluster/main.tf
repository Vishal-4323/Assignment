resource "aws_ecs_cluster" "medusa_cluster" {
  name = var.name
  configuration {
    execute_command_configuration {
      logging = "OVERRIDE"
      log_configuration {
        cloud_watch_log_group_name = var.cloud_watch_log_group_name
      }
    }
  }
}