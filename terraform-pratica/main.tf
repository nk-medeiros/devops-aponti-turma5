# Configuração dos provedores necessários e versão mínima
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Bloco do provedor AWS que define a região de atuação a partir de uma variável
provider "aws" {
  region = var.aws_region
}

# Bloco de recurso para criação do bucket S3 no serviço de armazenamento da AWS
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  # Tags de categorização e gerenciamento do recurso
  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}