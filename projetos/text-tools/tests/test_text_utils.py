import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from text_tools import *

def test_contar_palavras():
    assert contar_palavras("Olá mundo") == 2
    print("test_contar_palavras passou!")

def test_maiuscula():
    assert caixa_alta("teste") == "TESTE"
    print("test_maiuscula passou!")

def test_palindromo():
    assert eh_palindromo("Socorram me subi no onibus em Marrocos")
    print("test_palindromo passou!")

def test_inverter():
    assert inverter_texto("Python") == "nohtyP"
    print("test_inverter passou!")

def test_vogais():
    assert contar_vogais("aeiou") == 5
    print("test_vogais passou!")

def test_consoantes():
    assert contar_consoantes("abc") == 2
    print("test_consoantes passou!")

if __name__ == "__main__":
    test_contar_palavras()
    test_maiuscula()
    test_palindromo()
    test_inverter()
    test_vogais()
    test_consoantes()
    print("\nTodos os testes passaram!")
