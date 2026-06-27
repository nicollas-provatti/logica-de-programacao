#include <stdio.h>

int main() {
  // Motivação: Ler 5 inteiros e depois imprimir na tela.
  int n1, n2, n3, n4, n5;

  printf("Digite o primeiro numero: ");
  scanf("%d", &n1);

  printf("Digite o segundo numero: ");
  scanf("%d", &n2);

  printf("Digite o terceiro numero: ");
  scanf("%d", &n3);

  printf("Digite o quarto numero: ");
  scanf("%d", &n4);

  printf("Digite o quinto numero: ");
  scanf("%d", &n5);

  printf("\nLista dos numeros digitados: %d, %d, %d, %d e %d.\n", n1, n2, n3, n4, n5);
  
  return 0;
}