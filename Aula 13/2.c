#include <stdio.h>

void bubbleSort(int array[], int tam);
void imprimirArray(int array[], int tam);

int main() {
  int numeros[] = {5, 4, 3, 2, 1};

  bubbleSort(numeros, 5);
  imprimirArray(numeros, 5);

  return 0;
}

void bubbleSort(int array[], int tam) {
  for (int i = 0; i < tam - 1; i++) {
    for (int j = 0; j < tam - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int aux = array[j];
        array[j] = array[j + 1];
        array[j + 1]  = aux;
      }
    }
  }
}

void imprimirArray(int array[], int tam) {
  for (int i = 0; i < tam; i++) {
    printf("%d ", array[i]);
  }
}