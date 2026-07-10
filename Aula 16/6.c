#include <stdio.h>
#include <string.h>

int main() {
    // Escrita de arquivos com fputs()
    
    FILE *file = fopen("arquivo.txt", "w");  

    if (file == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    fputs("Esta é uma linha de texto.\n", file);  

    fclose(file); 
    return 0;
}