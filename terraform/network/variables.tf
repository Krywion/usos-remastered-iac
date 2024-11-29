variable "environment" {
  type        = string
  default     = "dev"
  description = "environment (dev, staging, prod)"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR for VPC"
}

variable "availability_zones" {
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
  description = "List of availability zones"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "CIDRs for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
  description = "CIDRs for private subnets"
}

variable "app_name" {
  type        = string
  default     = "usos-remastered"
  description = "Application name"
}





