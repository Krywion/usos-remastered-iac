output "database_endpoint" {
  description = "The connection endpoint for the database"
  value       = aws_db_instance.postgresql.endpoint
}

output "database_name" {
  description = "The name of the database"
  value       = aws_db_instance.postgresql.db_name
}

output "database_username" {
  description = "The administrator username for the database"
  value       = aws_db_instance.postgresql.username
}