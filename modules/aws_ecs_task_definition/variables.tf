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
  type = string
}

variable "essential" {
  default = true
}

variable "DATABASE_URL" {
  type = string
}

variable "JWT_SECRET" {
  type = string
}

variable "COOKIE_SECRET" {
  type = string
}