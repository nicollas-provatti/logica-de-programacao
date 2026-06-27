#include <stdio.h>

int main() {
  // Busca
  int numeros[] = {7, 2, 1, 4, 10, 8, 6, 9, 1, 5, 3};

  int numeroProcurado = 7;
  int encontrado = 0;

  for (int indice = 0; indice < 10; indice++) {
    if (numeros[indice] == numeroProcurado) {
      printf("O numero %d está do array.\n", numeroProcurado);
      encontrado = 1;
      break;
    }
  }

  if (encontrado == 0) {
    printf("O numero %d não está do array.\n", numeroProcurado);
  }

  return 0;
}