#include <stdio.h>

int main() {
  int numeros[5];

  for (int indice = 0; indice < 5; indice++) {
    printf("Digite o %d° numero: ", indice + 1);
    scanf("%d", &numeros[indice]);
  }

  printf("\nLista dos numeros digitados: ");

  for (int indice = 0; indice < 5; indice++) {
    printf("%d ", numeros[indice]);
  }

  return 0;
}