# Declaração da variável de região com valor padrão para a Virginia (us-east-1)
variable "aws_region" {
  description = "Região da AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

# Nome do bucket S3 (deve ser único em toda a AWS)
variable "bucket_name" {
  description = "Nome único do bucket S3"
  type        = string
  default     = "meu-bucket-terraform-hands-on-12345"
}

# Identificação do ambiente de execução
variable "environment" {
  description = "Ambiente de implantação"
  type        = string
  default     = "Dev"
}