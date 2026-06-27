#include <stdio.h>

int buscaLinear(int numeros[], int numeroProcurado);

int main() {
  // Busca
  int numeros[] = {7, 2, 1, 4, 10, 8, 6, 9, 1, 5, 3};

  int numeroProcurado = 7;
  int encontrado = buscaLinear(numeros, numeroProcurado);

  return 0;
}

int buscaLinear(int numeros[], int numeroProcurado) {
  for (int indice = 0; indice < 10; indice++) {
    if (numeros[indice] == numeroProcurado) {
      return 1;
    }
  }
  return 0;
}