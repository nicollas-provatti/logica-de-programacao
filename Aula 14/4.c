#include <stdio.h>

int main() {
  // Leitura de Strings
  char nome[20];

  // scanf()
  printf("Qual o seu nome ? ");
  scanf("%19[^\n]", nome);

  printf("Nome: %s\n", nome);

  return 0;
}