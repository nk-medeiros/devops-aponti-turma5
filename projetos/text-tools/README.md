# Text Tools

Biblioteca Python para manipulação e análise de textos.

## Funcionalidades

- Contagem de palavras
- Contagem de caracteres
- Conversão para maiúsculas
- Conversão para minúsculas
- Capitalização
- Inversão de texto
- Remoção de espaços extras
- Remoção de pontuação
- Contagem de vogais
- Contagem de consoantes
- Verificação de palíndromos

## Estrutura

```
text_tools/
examples/
tests/
```

## Como utilizar

Clone o repositório:

```bash
git clone https://github.com/nk-medeiros/text-tools.git
```

Importe normalmente:

```python
from text_tools import *

texto = "Olá Mundo"

print(contar_palavras(texto))
print(caixa_alta(texto))
```

## Exemplo

```python
from text_tools import *

texto = "Python é muito legal"

print(contar_palavras(texto))
print(contar_vogais(texto))
print(inverter_texto(texto))
```

## Licença

MIT