# -*- coding: utf-8 -*-
"""CAPITULO_4_ALGEBRA_LINEAR.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/18lEdgsFVXPOHO8iD5dGLQeHY7AMDMK40

#VETORES
"""

from typing import List

"""### Podemos representar vetores em dados como se tiver altura, peso e idade teremos vetores tridumensionais. Se tiver noras quatro testes teremos vetores quadriminensionais."""

Vector = List[float]
height_weight_age =  [
  70, #polegadas
  170, #libras
  40#anos
]

grades = [
  95, #teste 1
  80, #teste 2
  75, #teste 3
  62, #teste 4
]

"""### Podemos fazer cálculos aritiméticos com vetores. Soma ou adição de vetores ocorre por componentes."""

#ADIÇÃO DE VETORES
def add(v: Vector, w: Vector) -> Vector:
  #Soma de elementos.
  assert len(v) == len(w) # vetores devem ser do mesmo tamanho
  return [v_i + w_i for v_i, w_i in zip(v,w)]

print(add([1, 2, 3], [4, 5, 6]))

#SUBTRAÇÃO DE VETORES
def subtract(v: Vector, w: Vector) -> Vector:
  #Soma de elementos.
  assert len(v) == len(w) # vetores devem ser do mesmo tamanho
  return [v_i - w_i for v_i, w_i in zip(v,w)]

print(subtract([1, 2, 3], [4, 5, 6]))

#Lista de Vetores

def vector_sum(vectors: List[Vector]) -> Vector:
  #Soma todos os elementos correspondentes
  #Verificar se o vetor não está vazio
  assert vectors

  #Verificar se vetores, são do mesmo tamanho, pois, a soma só ocorre para vetores do mesmo tamanho
  num_elements = len(vectors[0])
  assert all(len(v) == num_elements for v in vectors)
  return [sum(vector[i] for vector in vectors) for i in range(num_elements)]

print(vector_sum([[1, 2], [3, 5], [5, 6], [7, 8]]))

# MULTIPLICAR UM VETOR POR UM ESCALAR

def scalar_multiply(c: float, v:Vector) -> Vector:
  return [c * v_i for v_i in v]

print(scalar_multiply(2,[1, 2, 3]))

# Verificar Méida.
def vector_mean(vectors: List[Vector]) -> Vector:
  n = len(vectors)
  return scalar_multiply(1/n,vector_sum(vectors))

print(vector_mean([[1, 2], [3, 5], [5, 6], [7, 8]]))

# PRODUTO ESCALAR
def dot(v:Vector, w:Vector) -> float:
  assert len(v) == len(w)
  return sum(v_i * w_i for v_i, w_i in zip(v,w))

# produto esclar é o comprimento do vetor quando se projeta v em w
print(dot([1, 2, 3],[4, 5, 6]))

#soma dos quadrados de um vetor
def sum_squares(v: Vector) -> float:
  return dot(v,v)

print(sum_squares([1, 2, 3]))

#podemos usar este valor para calcular a magnitude de um vetor
import math
def magnitude(v: Vector) -> float:
  return math.sqrt(sum_squares(v))

magnitude([3,4])

# Distância entre vetores
def squared_distance(v: Vector, w: Vector) -> float:
  return sum_squares(subtract(v,w))

def distance(v: Vector, w: Vector) -> float:
  return math.sqrt(squared_distance(v,w))

"""# MATRIZES"""

Matrix = List[List[float]]

A = [[1,2,3],[4,5,6]] # duas linhas e 3 colunas
B = [[1,2],
     [3,4],
     [5,6]] # tres linhas e duas colunas

#retornar o shape da matriz
from typing import Tuple
def shape(A: Matrix) -> Tuple[int,int]:
  num_rows = len(A)
  num_cols = len(A[0])
  return (num_rows, num_cols)

assert shape(A) == (2,3)

def get_row(A: Matrix, i: int) -> Vector:
  return A[i]
def get_column(A: Matrix, j: int) -> Vector:
  return[A_i[j] for A_i in A]

#Criaremos matrizes.
from typing import Callable
def make_matrix(num_rows: int, num_columns: int, entry_fn: Callable[[int, int], float]) -> Matrix:
  return [[entry_fn(i,j) for j in range (num_columns)] for i in range (num_rows)]