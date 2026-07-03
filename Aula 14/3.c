#include <stdio.h>

int main() {
  char nome[4];

  printf("Qual o seu nome ? ");
  scanf("%s", nome);

  printf("Nome: %s\n", nome);

  return 0;
}