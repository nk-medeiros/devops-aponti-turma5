import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from text_tools import *

texto = input("Digite um texto: ")

print("Palavras:", contar_palavras(texto))
print("Caracteres:", contar_caracteres(texto))
print("Maiúsculas:", caixa_alta(texto))
print("Minúsculas:", caixa_baixa(texto))
print("Capitalizado:", capitalizar(texto))
print("Invertido:", inverter_texto(texto))
print("Vogais:", contar_vogais(texto))
print("Consoantes:", contar_consoantes(texto))
print("É palíndromo?", eh_palindromo(texto))