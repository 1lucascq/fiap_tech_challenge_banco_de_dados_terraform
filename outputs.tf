output "database_endpoint" {
  description = "Endpoint do banco PostgreSQL"
  value       = aws_db_instance.fiap_postgres.endpoint
}

output "database_port" {
  description = "Porta do banco PostgreSQL"
  value       = aws_db_instance.fiap_postgres.port
}

output "database_name" {
  description = "Nome do banco de dados"
  value       = aws_db_instance.fiap_postgres.db_name
}

output "database_username" {
  description = "Username do banco"
  value       = aws_db_instance.fiap_postgres.username
  sensitive   = true
}

output "database_url" {
  description = "URL de conexão completa para usar na aplicação"
  value       = "postgresql://${aws_db_instance.fiap_postgres.username}:${var.db_password}@${aws_db_instance.fiap_postgres.endpoint}:${aws_db_instance.fiap_postgres.port}/${aws_db_instance.fiap_postgres.db_name}?schema=public"
  sensitive   = true
}

output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.fiap_vpc.id
}

output "private_subnet_ids" {
  description = "IDs das subnets privadas"
  value       = [
    aws_subnet.fiap_private_subnet_1.id,
    aws_subnet.fiap_private_subnet_2.id
  ]
}