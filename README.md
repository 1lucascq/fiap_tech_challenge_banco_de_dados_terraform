# FIAP Tech Challenge - Database Infrastructure

Este repositório contém a infraestrutura do banco de dados PostgreSQL (RDS) para o projeto FIAP Tech Challenge.

## Recursos Criados

- **RDS PostgreSQL 15.8**: Instância gerenciada compatível com a aplicação NestJS
- **VPC e Subnets**: Rede isolada para segurança
- **Security Groups**: Controle de acesso restrito à VPC

## Como usar

1. Configure os secrets no GitHub:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY` 
   - `DB_PASSWORD`

2. O pipeline será executado automaticamente no push para main

3. Use o output `database_url` na variável `DATABASE_URL` da aplicação

## Schema do Banco

O banco criado é compatível com o schema Prisma existente:
- Customer (id, email, cpf, name, timestamps)
- Category (id, name)
- Product (id, name, ingredients[], categoryId, price, timestamps)
- Order (id, customerId?, total, status, timestamps)
- OrderProduct (relacionamento many-to-many)