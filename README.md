# FIAP Tech Challenge - Banco de Dados Terraform

This repository contains Terraform configuration files for managing cloud infrastructure for the FIAP Tech Challenge database project.

## Structure

- `main.tf`: Main Terraform configuration
- `variables.tf`: Input variables
- `outputs.tf`: Output values
- `versions.tf`: Provider and Terraform version constraints
- `.github/workflows/terraform.yml`: GitHub Actions workflow for Terraform CI/CD

## Usage

1. Install [Terraform](https://www.terraform.io/downloads.html)
2. Configure your cloud provider credentials
3. Run `terraform init`
4. Run `terraform plan`
5. Run `terraform apply`
