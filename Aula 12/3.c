#include <stdio.h>

int main() {

  int numeros[5];

  printf("Digite o primeiro numero: ");
  scanf("%d", &numeros[0]);

  printf("Digite o segundo numero: ");
  scanf("%d", &numeros[1]);

  printf("Digite o terceiro numero: ");
  scanf("%d", &numeros[2]);

  printf("Digite o quarto numero: ");
  scanf("%d", &numeros[3]);

  printf("Digite o quinto numero: ");
  scanf("%d", &numeros[4]);

  printf("\nLista dos numeros digitados: %d, %d, %d, %d e %d.\n", numeros[0], numeros[1], numeros[2], numeros[3], numeros[4]);

  return 0;
}