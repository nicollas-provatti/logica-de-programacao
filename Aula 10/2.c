#include <stdio.h>

int main() {
  // Variáveis
  int idade = 17;
  float altura = 1.67;
  char genero = 'M';
  char nome[] = "Lucas";

  // Saída de Dados
  printf("%d\n", idade);
  printf("%f\n", altura);
  printf("%c\n", genero);
  printf("%s\n", nome);

  // Saída de Dados com Label
  printf("Idade: %d\n", idade);
  printf("Altura: %f\n", altura);
  printf("Genero: %c\n", genero);
  printf("Nome: %s\n", nome);
  return 0;
}