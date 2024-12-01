resource "aws_security_group" "rds" {
  name        = "${var.app_name}-${var.environment}-rds-sg"
  description = "Security Group for RDS PostgreSQL"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = var.public_subnet_cidrs
    description = "Allow PostgreSQL traffic from public subnets"
  }

  tags = {
    Name = "${var.app_name}-${var.environment}-rds-sg"
  }
}

resource "aws_db_subnet_group" "rds" {
  name        = "${var.app_name}-${var.environment}-rds-subnet-group"
  description = "RDS subnet group"
  subnet_ids  = var.private_subnet_ids

  tags = {
    Name = "${var.app_name}-${var.environment}-rds-subnet-group"
  }
}

resource "aws_db_parameter_group" "postgresql" {
  family = "postgres14"
  name   = "${var.app_name}-${var.environment}-postgresql-parameters"

  parameter {
    name  = "max_connections"
    value = "10"
    apply_method = "pending-reboot"
  }

  parameter {
    name  = "client_encoding"
    value = "utf8"
    apply_method = "pending-reboot"
  }
}

resource "aws_db_instance" "postgresql" {
  identifier = "${var.app_name}-${var.environment}-postgresql"

  engine            = "postgres"
  engine_version    = "14"
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  storage_type      = "gp2"

  db_name  = var.database_name
  username = var.database_username
  password = var.database_password

  db_subnet_group_name   = aws_db_subnet_group.rds.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  parameter_group_name   = aws_db_parameter_group.postgresql.name

  multi_az                = false
  skip_final_snapshot     = true
  backup_retention_period = 7

  tags = {
    Name        = "${var.app_name}-${var.environment}-postgresql"
    Environment = var.environment
  }
}