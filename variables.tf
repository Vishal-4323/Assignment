variable "image" {
  type = string
}

variable "db_url" {
  type = string
}

variable "jwt_secret" {
  type = string
}

variable "cookie_secret" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnets" {
  default = ["subnet-09b7ac788acb0996b"]
}
