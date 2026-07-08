#include <stdio.h>

// E se quiséssemos armazenar o aniversário de cada aluno. Para fazer isso seria preciso adicionar três variáveis na "struct aluno": dia (int), mes (int) e ano (int). Só que essas variáveis possumem uma relação entre elas, dessa forma podemos criar uma struct com essas variáveis. Apos criar a struct "dataNascimento" podemos adicionar uma variável do tipo "struct dataNascimento" dentro da struct "aluno" e assim teremos o conceito de struct aninhadas.

struct dataNascimento {
    int dia;
    int mes;
    int ano;
};

struct aluno {
    char nome[50];
    int idade;
    float nota;
    // int dia;
    // int mes;
    // int ano;
    struct dataNascimento aniversario;
};

int main() {
    struct aluno aluno1;

    aluno1.aniversario.dia = 15;
    aluno1.aniversario.mes = 8;
    aluno1.aniversario.ano = 2000;

    printf("%02d/%02d/%d", aluno1.aniversario.dia, aluno1.aniversario.mes, aluno1.aniversario.ano);

    return 0;
}