#include <stdio.h>

void exibirMensagem(char nome[]) { // Declaração da 1° função
    printf("%s, Seja bem-vindo(a)!\n", nome);
}

int somarDoisNumeros(int numero1, int numero2) { // Declaração da 2° função
    return numero1 + numero2;
}

int main() {
    exibirMensagem("Lucas"); // Chamada da 1° função

    int soma = somarDoisNumeros(3, 2); // Declaração da 2° função

    printf("A soma é %d.\n", soma);
    return 0;
}
