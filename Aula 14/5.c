#include <stdio.h>
#include <string.h>

int main() {
  // Leitura de Strings
  char nome[20];

  // nome: [N, i, c, o, l, l, a, s, '\n', '\0']

  // fgets()
  printf("Qual o seu nome ? ");
  fgets(nome, 20, stdin);
  int indice = strcspn(nome, "\n");
  nome[indice] = '\0';

  printf("Indice: %d\n", indice);
  printf("Nome: %s\n", nome);
  printf("Fim do programa.\n");

  return 0;
}