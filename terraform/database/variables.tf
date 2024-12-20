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

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "The CIDR blocks of public subnets"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "The IDs of private subnets"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
  default     = 20
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