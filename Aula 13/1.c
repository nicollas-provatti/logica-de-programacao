#include <stdio.h>

int main() {
  // Ordenação
  int numeros[] = {5, 4, 3, 2, 1};

  int tam = 5;

  // Original: 5 4 3 2 1

  for (int indice = 0; indice < tam - 1; indice++) {
    if (numeros[indice] > numeros[indice + 1]) {
      int auxiliar = numeros[indice];
      numeros[indice] = numeros[indice + 1];
      numeros[indice + 1] = auxiliar;
    }
  }

  // Após a primeira execução: 4 3 2 1 5

  for (int indice = 0; indice < tam - 1; indice++) {
    if (numeros[indice] > numeros[indice + 1]) {
      int auxiliar = numeros[indice];
      numeros[indice] = numeros[indice + 1];
      numeros[indice + 1] = auxiliar;
    }
  }

  // Após a segunda execução: 3 2 1 4 5 

  for (int indice = 0; indice < tam - 1; indice++) {
    if (numeros[indice] > numeros[indice + 1]) {
      int auxiliar = numeros[indice];
      numeros[indice] = numeros[indice + 1];
      numeros[indice + 1] = auxiliar;
    }
  }

  // Após a terceira execução: 2 1 3 4 5 

  for (int indice = 0; indice < tam - 1; indice++) {
    if (numeros[indice] > numeros[indice + 1]) {
      int auxiliar = numeros[indice];
      numeros[indice] = numeros[indice + 1];
      numeros[indice + 1] = auxiliar;
    }
  }

  // Na quarta execução: 2 1 3 4 5 

  // Após a quarta execução: 1 2 3 4 5 

  for (int indice = 0; indice < tam; indice++) {
    printf("%d ", numeros[indice]);
  }

  return 0;
}