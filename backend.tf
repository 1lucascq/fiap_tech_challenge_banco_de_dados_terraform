terraform {
  backend "s3" {
    bucket = "fiap-tc-backend-terraform"
    key    = "fiap-tech-challenge/terraform.tfstate"
    region = "us-east-1"
  }
}