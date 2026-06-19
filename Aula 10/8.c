#include <stdio.h>

int main() {

  for (int contador = 0; contador < 5; contador++) {
    printf("%d: Hello World!\n", contador);
  }

  int contWhile = 0;

  while (contWhile < 5) {
    printf("%d: Hello World!\n", contWhile);
    contWhile++;
  }

  int contDoWhile = 0;

  do {
    printf("%d: Hello World!\n", contWhile);
    contWhile++;
  } while (contDoWhile < 5);

  return 0;
}
