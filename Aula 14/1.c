#include <stdio.h>

int main() {
  char nome[4];

  nome[0] = 'A';
  nome[1] = 'n';
  nome[2] = 'a';
  // nome[3] = 'a';

  char genero[9] = "Feminino";
  char estadoCivil[] = "Solteira";

  printf("Nome: %s\n", nome);
  printf("Genero: %s\n", genero);
  printf("Estado Civil: %s\n", estadoCivil);

  return 0;
}