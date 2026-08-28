# Definição do nome do Grupo de Recursos
variable "resource_group_name" {
  description = "Nome do Grupo de Recursos na Azure"
  type        = string
  default     = "rg-terraform-pratica"
}

# Definição da localização/região do recurso na Azure
variable "location" {
  description = "Região da Azure onde os recursos serão implantados"
  type        = string
  default     = "East US"
}

# Nome da Storage Account (deve ser único globalmente na Azure, apenas letras minúsculas e números)
variable "storage_account_name" {
  description = "Nome único da Storage Account na Azure"
  type        = string
  default     = "stterraformpratica123"
}

# Nome do Container dentro do S3/Storage Account
variable "container_name" {
  description = "Nome do container de armazenamento"
  type        = string
  default     = "dados-container"
}

# Identificação do ambiente de execução
variable "environment" {
  description = "Ambiente de implantação dos recursos"
  type        = string
  default     = "Dev"
}