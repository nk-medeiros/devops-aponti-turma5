# Saída do ID do Grupo de Recursos criado
output "resource_group_id" {
  description = "O ID do Resource Group criado na Azure"
  value       = azurerm_resource_group.rg.id
}

# Saída do nome da Storage Account criada
output "storage_account_name" {
  description = "O nome da Storage Account criada"
  value       = azurerm_storage_account.storage.name
}

# Saída da URL do Endpoints Primário de Blob da Storage Account
output "storage_primary_blob_endpoint" {
  description = "A URL do endpoint de Blob da Storage Account"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

# Saída do ID da Subscrição obtido via data source
output "subscription_id" {
  description = "O ID da Subscrição Azure utilizada"
  value       = data.azurerm_subscription.current.subscription_id
}