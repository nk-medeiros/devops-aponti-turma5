# Bloco de Data Source para consultar informações da Subscrição Azure em execução
data "azurerm_subscription" "current" {}

# Bloco de Data Source para obter detalhes do Usuário/Client de execução autenticado
data "azurerm_client_config" "current" {}