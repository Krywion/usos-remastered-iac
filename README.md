# USOS Remastered Infrastructure as Code

Infrastructure as Code repository for USOS Remastered project using Terraform to manage AWS resources.

## Project Overview
This project contains Terraform configurations for deploying and managing cloud infrastructure for the USOS Remastered application. The infrastructure is designed to host a Spring Boot application with PostgreSQL database on AWS.

## Architecture
- **Network Layer**: VPC with public and private subnets across multiple availability zones
- **Database Layer**: Amazon RDS PostgreSQL instance in private subnets 
- **Application Layer**: Spring Boot application deployed in public subnets

## Prerequisites
- AWS CLI configured with appropriate credentials
- Terraform (version >= 1.0.0)
- Access to AWS account with necessary permissions

## Project Structure
```
terraform/
├── providers.tf      # AWS provider configuration
├── backend.tf       # State management configuration
├── network/         # Network infrastructure
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── database/        # Database infrastructure (RDS)
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── monitoring/        # Monitoring and logging infrastructure (CloudWatch)
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── application/     # Application infrastructure
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
```

## Deployment
1. Initialize Terraform:
```bash
terraform init
```
2. Review planned changes:
```bash
terraform plan
```
3. Apply changes:
```bash
terraform apply
```

## License 
MIT License


