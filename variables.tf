variable "db_url" {
  description = "The connection URL for the PostgreSQL database"
  type        = string
}

variable "jwt_secret" {
  description = "JWT secret for authentication"
  type        = string
}

variable "cookie_secret" {
  description = "Cookie secret for authentication"
  type        = string
}
