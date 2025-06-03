variable "project_name" {
  default = "tc-fiap"
}

variable "aws_region" {
  description = "Região da AWS"
  default     = "us-east-1"
}

variable "db_name" {
  description = "Nome do banco de dados"
  default     = "fiap_tc_db"
}

variable "db_username" {
  description = "Usuário do banco de dados"
  default     = "fiap_tc_user"
}

variable "db_password" {
  description = "Senha do banco de dados"
  default     = "senha_dificil"
  sensitive   = true
}

variable "db_instance_class" {
  description = "Tipo da instância RDS"
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Espaço em disco (GB)"
  default     = 20
}

variable "environment" {
  description = "Ambiente (dev, prod, etc)"
  default     = "dev"
}
