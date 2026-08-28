# Projeto Terraform - Provisionamento de Recursos na Microsoft Azure

Este repositório contém os arquivos de **Infraestrutura como Código (IaC)** desenvolvidos para o provisionamento de um **Grupo de Recursos**, uma **Conta de Armazenamento (*Storage Account*)** e um **Container** na Microsoft Azure utilizando o Terraform.

## Estrutura do Repositório

* `main.tf`: Configuração do provedor AzureRM e definição dos recursos (Resource Group, Storage Account e Container).
* `data.tf`: Blocos de *Data Sources* para consulta de dados existentes da nuvem (dados do cliente e subscrição).
* `variables.tf`: Declaração de variáveis para tornar as configurações reutilizáveis e dinâmicas.
* `outputs.tf`: Definição de saídas para exibir informações importantes dos recursos criados após a execução.
* `terraform.tfvars`: Arquivo com a definição dos valores padrão que sobrescrevem as variáveis para este ambiente.
* `.gitignore`: Arquivo para impedir o versionamento de arquivos de estado local e binários gerados pelo Terraform.
* `README.md`: Documentação na raiz do projeto detalhando o processo de conexão com a Cloud e as anotações do aprendizado.

---

## Processo de Conexão com a Cloud (Microsoft Azure)

Conforme os requisitos da atividade, a conexão direta e execução em uma conta de Cloud é opcional e não foi realizada.

O processo teórico e técnico para conectar este projeto a uma conta ativa da Microsoft Azure e aplicar a infraestrutura na nuvem exige os seguintes passos:

### 1. Instalação do Azure CLI

Baixar e instalar a interface de linha de comando oficial da Azure.

### 2. Autenticação via Terminal

Após a instalação, realizar a autenticação utilizando o seguinte comando:

```bash
az login
```

O comando abrirá o navegador para autenticação das credenciais da conta Microsoft Azure.

### 3. Definição da Subscrição

Após realizar o login, definir qual subscrição será utilizada:

```bash
az account set --subscription "SEU_SUBSCRIPTION_ID"
```

### 4. Ciclo de Execução no Terraform

Com o terminal autenticado, a execução da infraestrutura segue estes passos:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

#### Descrição dos comandos

* `terraform init`: Inicializa o diretório local e baixa o provedor `azurerm`.
* `terraform fmt`: Formata o código de acordo com os padrões sintáticos do Terraform.
* `terraform validate`: Valida se a sintaxe e a configuração dos arquivos `.tf` estão corretas.
* `terraform plan`: Exibe uma prévia da infraestrutura que será criada ou alterada na Azure.
* `terraform apply`: Confirma e aplica as alterações na nuvem.

---

## 📚 Anotações do que foi Aprendido em Aula

Durante o desenvolvimento desta atividade prática, foram trabalhados e consolidados os seguintes tópicos de **Infraestrutura como Código (IaC)**:

### 1. Conceito de Infraestrutura como Código (IaC)

Foi compreendido o conceito de **Infraestrutura como Código (IaC)**, que consiste na capacidade de definir, versionar, auditar e automatizar a criação e o gerenciamento de recursos em nuvem por meio de arquivos declarativos.

No Terraform, essas configurações são escritas utilizando a linguagem **HCL (*HashiCorp Configuration Language*)**.

### 2. Estrutura e Responsabilidade dos Arquivos

Cada arquivo possui uma responsabilidade específica dentro do projeto:

* **`main.tf`**: Arquivo onde é configurado o provedor da nuvem e são definidos os principais recursos que serão provisionados.
* **`variables.tf`**: Arquivo utilizado para declarar o nome, o tipo e a descrição das variáveis, evitando valores fixos (*hardcoded*) no código.
* **`terraform.tfvars`**: Arquivo responsável por atribuir os valores das variáveis para o ambiente atual.
* **`outputs.tf`**: Permite retornar informações úteis sobre os recursos após o provisionamento, como URLs de endpoints e IDs.

### 3. Uso de Data Sources (`data.tf`)

Foi aprendido como utilizar **Data Sources** para consultar e reutilizar informações que já existem na infraestrutura da nuvem.

Por exemplo, é possível consultar informações relacionadas à subscrição atual ou às configurações do usuário sem precisar criar esses recursos novamente.

### 4. Segurança e Versionamento (`.gitignore`)

Foi compreendida a importância do uso do arquivo **`.gitignore`** para impedir que arquivos e diretórios desnecessários ou sensíveis sejam enviados para o repositório Git.

Entre os principais itens que devem ser ignorados estão:

* Arquivos de estado do Terraform, como `.tfstate`;
* Diretório `.terraform`;
* Arquivos temporários e outros arquivos gerados localmente.

Essa prática ajuda a evitar a exposição de informações sensíveis e mantém o controle de versão organizado.

### 5. Ciclo de Vida dos Comandos do Terraform

Durante a atividade, foi trabalhada a sequência lógica utilizada no desenvolvimento e provisionamento de uma infraestrutura com Terraform:

1. **Inicialização**

   ```bash
   terraform init
   ```

2. **Formatação**

   ```bash
   terraform fmt
   ```

3. **Validação**

   ```bash
   terraform validate
   ```

4. **Planejamento**

   ```bash
   terraform plan
   ```

5. **Aplicação**

   ```bash
   terraform apply
   ```

Esse fluxo permite preparar, verificar, visualizar e, por fim, aplicar as alterações da infraestrutura de forma organizada e controlada.