#include <stdio.h>
#include <string.h>

void mensagemPersonalizada(char nome[]);

int main() {
  char nome[] = "Larrisa";

  mensagemPersonalizada(nome);
  return 0;
}

void mensagemPersonalizada(char nome[]) {
  printf("Ola, %s. Seja bem-vindo(a)!\n", nome);
}