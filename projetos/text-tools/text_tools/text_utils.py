import string


def contar_palavras(texto):
    return len(texto.split())

def contar_caracteres(texto):
    return len(texto)

def inverter_texto(texto):
    return texto[::-1]

def caixa_alta(texto):
    return texto.upper()

def caixa_baixa(texto):
    return texto.lower()

def capitalizar(texto):
    return texto.title()

def remover_espacos(texto):
    return " ".join(texto.split())

def remover_pontuacao(texto):
    return texto.translate(str.maketrans("", "", string.punctuation))

def eh_palindromo(texto):
    texto = remover_pontuacao(texto)
    texto = texto.replace(" ", "").lower()  
    return texto == texto[::-1]

def contar_vogais(texto):
    vogais = "aeiouAEIOU"
    return sum(1 for letra in texto if letra in vogais)

def contar_consoantes(texto):
    return sum(
        1 for letra in texto
        if letra.isalpha() and letra.lower() not in "aeiou"
    )
