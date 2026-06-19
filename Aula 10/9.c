#include <stdio.h>

void classificaAluno(float media);

int main() {

  classificaAluno(7);

  return 0;
}

void classificaAluno(float media) {
  if (media >= 6) {
    printf("Aprovado!\n");
  } else {
    printf("Reprovado!\n");
  }
}
