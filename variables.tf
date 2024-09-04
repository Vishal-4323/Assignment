variable "image" {
  type = string
}

variable "jwt_secret" {
  default = ""
}

variable "cookie_secret" {
  default = ""
}

variable "vpc_id" {
  default = ["vpc-04cf878b56e1792b0"]
}

variable "subnets" {
  default = ["subnet-09b7ac788acb0996b"]
}
