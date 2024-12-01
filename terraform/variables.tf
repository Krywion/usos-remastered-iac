variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment (dev, staging, prod)"
}

variable "app_name" {
  type        = string
  default     = "usos-remastered"
  description = "Application name"
}

variable "database_name" {
  description = "Name of the database to create"
  type        = string
}

variable "database_username" {
  description = "Database administrator username"
  type        = string
}

variable "database_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}