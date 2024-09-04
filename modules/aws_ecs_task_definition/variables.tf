variable "family" {
  default = ""
}

variable "network_mode" {
  default = "awsvpc"
}

variable "cpu" {
  default = ""
}

variable "memory" {
  default = ""
}

variable "requires_compatibilities" {
  default = ""
}

variable "name" {
  default = ""
}

variable "image" {
  default = "stephaneklein/medusa-backend"
}

variable "essential" {
  default = true
}

variable "db_url" {
  default = "database-1.ctmcai20g9uv.ap-south-1.rds.amazonaws.com"
}