variable "name" {
  default = ""
}

variable "cluster" {
  default = ""
}

variable "task_definition" {
  default = ""
}

variable "launch_type" {
  default = "FARGATE"
}

variable "subnets" {
  default = []
}

variable "security_groups" {
  default = []
}

variable "assign_public_ip" {
  default = true
}

variable "desired_count" {
  default = 1
}