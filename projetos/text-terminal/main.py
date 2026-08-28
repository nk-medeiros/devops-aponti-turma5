import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'biblioteca'))

from text_tools import *

while True:
    print("\n" + "="*30)
    print("      TEXT TOOLS")
    print("="*30)
    print("1 - Contar palavras")
    print("2 - Inverter texto")
    print("3 - Converter para maiúsculas")
    print("4 - Contar vogais")
    print("5 - Verificar palíndromo")
    print("0 - Sair")
    print("-"*30)
    
    opcao = input("Escolha uma opção: ")
    
    if opcao == "0":
        print("Saindo...")
        break
    
    texto = input("Digite o texto: ")
    print("-"*30)
    
    if opcao == "1":
        print(f"Palavras: {contar_palavras(texto)}")
    elif opcao == "2":
        print(f"Invertido: {inverter_texto(texto)}")
    elif opcao == "3":
        print(f"Maiúsculas: {caixa_alta(texto)}")
    elif opcao == "4":
        print(f"Vogais: {contar_vogais(texto)}")
    elif opcao == "5":
        if eh_palindromo(texto):
            print("É um palíndromo!")
        else:
            print("Não é um palíndromo.")
    else:
        print("Opção inválida!")
