#include <stdio.h>

// Motivação: Armazenar as informações dos alunos de uma escola.

// Declarando uma struct
struct aluno {
    char nome[50];
    int idade;
    float nota;
};


int main() {
    // Dados de um aluno
    char nome[50];
    int idade;
    float nota;

    // Dados de outro aluno
    char nome2[50];
    int idade2;
    float nota2;

    // Criando uma variável do tipo "struct aluno"
    struct aluno aluno;

    // Atribuição de valores
    strcpy(aluno.nome, "João");
    aluno.idade = 18;
    aluno.nota = 8.5;

    // Acessando os valores
    printf("%s\n", aluno.nome);
    printf("%d\n", aluno.idade);
    printf("%.2f\n", aluno.nota);

    // Preenchendo uma struct com scanf()
    printf("Nome: ");
    scanf("%49[^\n]", aluno.nome);
    getchar();
    printf("Idade: ");
    scanf("%d", &aluno.idade);
    printf("Nota: ");
    scanf("%f", &aluno.nota);

    // Acessando os valores:
    printf("Dados do aluno 1\n");
    printf("Nome: %s\n", aluno.nome);
    printf("Idade: %d\n", aluno.idade);
    printf("Nota: %.2f\n", aluno.nota);

    return 0;
}

 // A medida que o números de alunos crescem é preciso delcarar mais três variáveis para armazenar os dados. Como resolver isso ?

// Solução: Usar uma struct. Uma struct te permite criar um novo tipo de dado a partir de dados primitivos (char, int, float, double). E como isso nos ajuda ? A ideia é criar um tipo de dado chamando "aluno" que contera os seus dados. Não entendeu ? Vamos para a prática!!