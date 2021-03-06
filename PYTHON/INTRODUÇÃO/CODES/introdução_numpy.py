# -*- coding: utf-8 -*-
"""INTRODUÇÃO_NUMPY.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1pQd1NKB1tkuEE1wx16kRFfq0mF6yTWYW
"""

import numpy as np

#km = np.loadtxt('carros-km.txt') #LENDO ARQUIVO E COLOCANO DENTRO DE UM ARRAY

#km

#anos = np.loadtxt('carros-anos.txt', dtype = int)

#anos

"""KILOMETRAGEM MÉDIA POR ANO"""

#km_media = km / (2019 - anos)

#km_media

"""# TRABALHANDO COM LISTAS"""

acessorios = ['Rodas de liga', 'Travas elétricas', 'Piloto automático', 'Bancos de couro', 'Ar condicionado', 'Sensor de estacionamento', 'Sensor crepuscular', 'Sensor de chuva']
acessorios

type(acessorios)

"""## LISTA COM TIPOS VARIADOS"""

carro_1 = ['Jetta Variant', 'Motor 4.0 Turbo', 2003, 44410.0, False, ['Rodas de liga', 'Travas elétricas', 'Piloto automático'], 88078.64]
carro_2 = ['Passat', 'Motor Diesel', 1991, 5712.0, False, ['Central multimídia', 'Teto panorâmico', 'Freios ABS'], 106161.94]

carro_1

carros = [carro_1, carro_2]

carros

"""## OPERAÇÕES COM LISTAS"""

# VERIFICAR SE UM ITEM ESTA DENTRO DE UMA LISTA
acessorios
'Rodas de liga' in acessorios
'Rodas de liga' not in acessorios
'4 x 4' in acessorios

# CONCATENAR LISTAR
A = ['Rodas de liga', 'Travas elétricas', 'Piloto automático', 'Bancos de couro']
B = ['Ar condicionado', 'Sensor de estacionamento', 'Sensor crepuscular', 'Sensor de chuva']
A + B

# TAMANHO DA LISTA
len(acessorios)

"""## MÉTODOS DE LISTA"""

#SORT
acessorios
acessorios.sort()
acessorios

#APPEND
acessorios.append('4 x 4')

acessorios

#POP
acessorios.pop()
acessorios

#COPY
acessorios_2 = acessorios.copy()
print(acessorios_2)
# O MESMO RESULTADO DE OUTRA FORMA
acessorios_3 = acessorios[:]
print(acessorios_3)

"""# LIST COMPREHENSIONS"""

lista = [i ** 2 for i in range(10)]
print(lista)

"""# LOOPS ANINHADOS"""

dados = [ 
    ['Rodas de liga', 'Travas elétricas', 'Piloto automático', 'Bancos de couro', 'Ar condicionado', 'Sensor de estacionamento', 'Sensor crepuscular', 'Sensor de chuva'],
    ['Central multimídia', 'Teto panorâmico', 'Freios ABS', '4 X 4', 'Painel digital', 'Piloto automático', 'Bancos de couro', 'Câmera de estacionamento'],
    ['Piloto automático', 'Controle de estabilidade', 'Sensor crepuscular', 'Freios ABS', 'Câmbio automático', 'Bancos de couro', 'Central multimídia', 'Vidros elétricos']
]
dados

for lista in dados:
  print(lista)

for lista in dados:
  for item in lista:
    print(item)

acessorios = []
for lista in dados:
  for item in lista:
    acessorios.append(item)
print(acessorios)

set(acessorios)

[item for lista in dados for item in lista]

"""# NUMPY"""

import numpy as np

np.arange(10)

from numpy import arange
arange(10)

#CRIAR UM ARRAY NUMPY
km = np.array([1000,1500,2700])
km

type(km)

km.dtype

km = np.loadtxt(fname='/content/drive/MyDrive/ALURA/ALURA/DATA SCIENCE/INTRODUÇÃO NUMPY/data/carros-km.txt', dtype=int)

km

km.dtype

#ARRAYS COM DUAS DIMENSÕES.
dados

acessorios = np.array(dados)

acessorios

type(acessorios)

km.shape

acessorios.shape

acessorios.dtype

np_array = np.arange(1000000)

py_list = list(range(1000000))

# Commented out IPython magic to ensure Python compatibility.
# %time for _ in range(100): np_array *= 2

#%time for _ in range(100): py_list *= 2

"""## OPERAÇÕES ARITIMÉTICAS COM NUMPY"""

km = np.array([4410., 5712., 37123., 0., 25757.])
anos = np.array([2003, 1991, 1991, 2019, 2006])

idade = 2022 - anos

idade

km_media = km / idade
km_media

"""## OPERAÇÕES COM DUAS DIMENSÕES"""

dados = np.array([km, anos])

dados

dados.shape

km_media = dados[0] / (2022 - dados[1])

km_media

contador = np.arange(10)
contador

dados[1, 2]

contador[1:4]

dados[:, 1:3]

contador > 5

dados[: ,dados[1] > 2000]

"""# ATRIBUTOS E MÉTODOS COM ARRAY NUMPY"""

dados.ndim

dados.size

# ARRAYS NUMPY SO ACEITAM UM TIPO DE DADO
dados.dtype

#LINHAS -> COLUNAS
dados.T

dados.tolist()

contador

contador.reshape(5,2)

contador.reshape((5,2), order = 'F') #INDeXAÇÂO FORTRAN

km = [4410., 5712., 37123., 0., 25757.]
anos = [2003, 1991, 1991, 2019, 2006]
info_carros = km + anos



np.array(info_carros).reshape((5,2),order='F')

dados_new = dados.copy()

dados_new

dados_new.resize((3,5), refcheck=False)

dados_new

dados_new[2] = dados_new[0] / (22022-dados[1])

dados_new

"""# ESTATÍSTICA COM NUMPY"""

anos = np.loadtxt(fname='/content/drive/MyDrive/ALURA/ALURA/DATA SCIENCE/INTRODUÇÃO NUMPY/data/carros-anos.txt', dtype=int)
km = np.loadtxt(fname='/content/drive/MyDrive/ALURA/ALURA/DATA SCIENCE/INTRODUÇÃO NUMPY/data/carros-km.txt')
valor = np.loadtxt(fname='/content/drive/MyDrive/ALURA/ALURA/DATA SCIENCE/INTRODUÇÃO NUMPY/data/carros-valor.txt')

anos.shape

dataset = np.column_stack((anos,km,valor))

dataset

dataset.shape

np.mean(dataset, axis=0)

np.mean(dataset[:,1])

np.std(dataset[:,2])

dataset.sum(axis = 0)

