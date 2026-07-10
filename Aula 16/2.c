#include <stdio.h>

int main() {
    // Leitura de arquivos com fgetc()
    FILE *arquivo = fopen("arquivo.txt", "r");

    if (arquivo == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    // fgetc()
    char ch1 = fgetc(arquivo);
    printf("%c\n", ch1);
    char ch2 = fgetc(arquivo);
    printf("%c\n", ch2);

    char caractere;

    while ((caractere = fgetc(arquivo)) != EOF) {
        printf("%c", caractere);
    }

    fclose(arquivo);
}