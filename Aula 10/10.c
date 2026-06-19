#include <stdio.h>

int classificaAluno(float media);

int main() {

  int classificacao = classificaAluno(5);

  if (classificacao) {
    printf("Aprovado!\n");
  } else {
    printf("Reprovado!\n");
  }

  return 0;
}

int classificaAluno(float media) {
  if (media >= 6) {
    return 1;
  } else {
    return 0;
  }
}
