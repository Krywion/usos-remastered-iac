output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "public_subnet_cidrs" {
  value       = aws_subnet.public[*].cidr_block
  description = "The CIDR blocks of public subnets"
}

output "private_subnet_ids" {
  value       = aws_subnet.private[*].id
  description = "The IDs of private subnets"
}