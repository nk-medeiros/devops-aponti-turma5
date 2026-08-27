# Projeto Terraform - Provisionamento de Bucket S3 na AWS

Este repositório contém os arquivos de Infraestrutura como Código (IaC) desenvolvidos para o provisionamento de um bucket no Amazon S3 utilizando o Terraform.

## Estrutura do Repositório

- `main.tf`: Configuração do provider AWS e definição do recurso de bucket S3.
- `variables.tf`: Declaração de variáveis dinâmicas (região, nome do bucket, ambiente).
- `outputs.tf`: Definição das saídas exibidas após o provisionamento dos recursos.
- `.gitignore`: Arquivo para impedir o envio de binários do Terraform e arquivos de estado ao repositório.

## Processo de Conexão com a Cloud (AWS)

Para conectar o projeto a uma conta ativa da AWS e aplicar as configurações na nuvem, deve-se seguir os passos abaixo:

1. **Instalação do AWS CLI:** Baixar e instalar a interface de linha de comando oficial da AWS.
2. **Configuração de Credenciais:** Criar uma *Access Key ID* e *Secret Access Key* no serviço IAM do console AWS.
3. **Autenticação Local:** Executar o comando `aws configure` no terminal e inserir as credenciais solicitadas.
4. **Execução:** Com o ambiente autenticado, utilizar `terraform init`, `terraform plan` e `terraform apply`.

## Anotações e Aprendizados de Aula

- **Infraestrutura como Código (IaC):** Capacidade de definir, gerenciar e atualizar recursos de nuvem através de código declarativo e versionável.
- **Comandos Principais do Terraform:**
  - `terraform init`: Inicializa o diretório de trabalho e baixa os provedores necessários (como o provider da AWS).
  - `terraform fmt`: Formata automaticamente o código conforme os padrões oficiais do Terraform.
  - `terraform validate`: Valida a sintaxe dos arquivos declarados na pasta.
  - `terraform plan`: Gera uma prévia das alterações que serão realizadas na infraestrutura sem alterar a nuvem.
  - `terraform apply`: Executa a criação/alteração dos recursos definidos na conta da nuvem.
- **Boas Práticas de Organização:** Separação do código em arquivos com papéis bem definidos (`main.tf`, `variables.tf`, `outputs.tf`) para reuso e facilidade de manutenção.