#include <stdio.h>
#include <string.h>
#define MAX_CONTAS 50

int ids = 1001;
int totalContas = 0;

typedef struct {
  int numero;
  char nome[50];
  float saldo;
} Conta;

int main() {
  Conta contas[MAX_CONTAS];

  int opcao;

  do {
    printf("\n===== SISTEMA BANCÁRIO =====\n");
    printf("1 - Criar Conta\n");
    printf("2 - Exibir Contas\n");
    printf("3 - Depositar\n");
    printf("4 - Sacar\n");
    printf("5 - Buscar Conta\n");
    printf("6 - Transferir\n");
    printf("7 - Deletar Conta\n");
    printf("8 - Editar Conta\n");
    printf("0 - Sair\n");
    printf("============================\n\n");

    printf("Escolha uma opcao: ");
    scanf("%d", &opcao);

    switch (opcao) {
    case 0:
      // Sair do prorama
      break;
    case 1:
      // Criar conta
      break;
    case 2:
      // Exibir contas
      break;
    case 3:
      // Depositar
      break;
    case 4:
      // Sacar
      break;
    case 5:
      // Buscar conta
      break;
    case 6:
      // Transferir
      break;
    case 7:
      // Deletar Conta
      break;
    case 8:
      // Editar Conta
      break;
    default:
      printf("Opcao invalida. Tente novamente.");
    }

  } while (opcao != 0);

  return 0;
}

void criarConta(Conta contas[]) {
  printf("--- CADASTRO ---\n");

  Conta conta;

  printf("Digite seu nome: ");
  scanf("%49[^\n]", conta.nome);
  
  conta.numero = ids;
  conta.saldo = 0.0;

  int indice = totalContas;

  contas[indice] = conta;

  printf("A conta foi criado com sucesso!\n");

  printf("Numero: %d", contas[indice].numero);
  printf("Nome: %s\n", contas[indice].nome);
  printf("Saldo: R$ %.2f\n", contas[indice].saldo);

  ids++;
  totalContas++;
}
