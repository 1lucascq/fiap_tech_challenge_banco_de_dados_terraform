output "database_endpoint" {
  description = "Endpoint do banco PostgreSQL"
  value       = aws_db_instance.postgres.endpoint
}

output "database_port" {
  description = "Porta do banco PostgreSQL"
  value       = aws_db_instance.postgres.port
}

output "database_name" {
  description = "Nome do banco de dados"
  value       = aws_db_instance.postgres.db_name
}

output "database_username" {
  description = "Username do banco"
  value       = aws_db_instance.postgres.username
  sensitive   = true
}

output "database_url" {
  description = "URL de conexão completa para usar na aplicação"
  value       = "postgresql://${aws_db_instance.postgres.username}:${var.db_password}@${aws_db_instance.postgres.endpoint}:${aws_db_instance.postgres.port}/${aws_db_instance.postgres.db_name}?schema=public"
  sensitive   = true
}

output "rds_security_group_id" {
  description = "ID do Security Group do RDS"
  value       = aws_security_group.rds_sg.id
}

output "rds_subnet_group_name" {
  description = "Nome do Subnet Group do RDS"
  value       = aws_db_subnet_group.rds_subnet_group.name
}