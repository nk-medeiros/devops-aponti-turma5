# Configuração do provedor Terraform e versão mínima necessária do provider azurerm
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

# Configuração do provedor da Microsoft Azure
provider "azurerm" {
  features {}
}

# Bloco de recurso para criação de um Resource Group (Grupo de Recursos) na Azure
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "Terraform"
  }
}

# Bloco de recurso para criação de uma Storage Account (Conta de Armazenamento)
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Armazenamento com redundância local

  tags = {
    environment = var.environment
    managed_by  = "Terraform"
  }
}

# Bloco de recurso para criação de um Container de Armazenamento dentro da Storage Account
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private" # Acesso privado por questões de segurança
}