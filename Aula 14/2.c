#include <stdio.h>

int main() {
  char nome[4] = "Ana";

  // nome: ['A', 'n', 'a', '\0']

  printf("Nome: %s\n", nome);

  for (int i = 0; nome[i] != '\0'; i++) {
    printf("%c\n", nome[i]);
  }

  return 0;
}