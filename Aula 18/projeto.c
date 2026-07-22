#include <stdio.h>
#include <string.h>
#define MAX_CONTAS 100

int ids = 1001;
int totalContas = 0;

typedef struct {
  int numero;
  char nome[100];
  float saldo;
} Conta;

// Funções do Banco de Dados
void carregarDados(Conta contas[]);
void salvarDados(Conta contas[], int totalContas);

// Funções Auxiliares
int mostrarMenu();
int contaExiste(Conta contas[], int numero);

// Funções do Sistema
void criarConta(Conta contas[]);
void exibirContas(Conta contas[]);
void depositar(Conta contas[]);
void sacar(Conta contas[]);
void buscarConta(Conta contas[]);
void transferir(Conta contas[]);
void deletarConta(Conta contas[]);
void editarConta(Conta contas[]);

int main() {
  Conta contas[MAX_CONTAS];

  carregarDados(contas);

  int opcao;

  do {
    opcao = mostrarMenu();
    getchar();

    switch (opcao) {
    case 0:
      printf("O sistema foi encerrado.");
      break;
    case 1:
      criarConta(contas);
      break;
    case 2:
      exibirContas(contas);
      break;
    case 3:
      depositar(contas);
      break;
    case 4:
      sacar(contas);
      break;
    case 5:
      buscarConta(contas);
      break;
    case 6:
      transferir(contas);
      break;
    case 7:
      deletarConta(contas);
      break;
    case 8:
      editarConta(contas);
      break;
    default:
      printf("Opção inválida. Tente novamente.");
    }

  } while (opcao != 0);

  return 0;
}

int mostrarMenu() {
  int opcao;
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

  printf("Escolha uma opção: ");
  scanf("%d", &opcao);
  return opcao;
}

int contaExiste(Conta contas[], int numero) {
  for (int i = 0; i < totalContas; i++) {
    if (contas[i].numero == numero) {
      return i;
    }
  }

  return -1;
}

void carregarDados(Conta contas[]) {
  FILE *arquivo = fopen("contas.txt", "r");

  if (arquivo == NULL) {
    printf("Erro ao ler o arquivo.\n");
    return;
  }

  int indice = 0;

  while (fscanf(arquivo, "%d,%99[^,],%f ", &contas[indice].numero, contas[indice].nome, &contas[indice].saldo) != EOF) {
    indice++;

    if (indice == MAX_CONTAS) break;
  }

  totalContas = indice;

  if (totalContas > 0) {
    ids = contas[indice - 1].numero + 1;
  }
  else {
    ids = 1001;
  }

  fclose(arquivo);
}

void salvarDados(Conta contas[], int totalContas) {
  FILE *arquivo = fopen("contas.txt", "w");

  if (arquivo == NULL) {
    printf("Erro ao escrever o arquivo!\n");
    return;
  }

  for (int i = 0; i < totalContas; i++) {
    fprintf(arquivo, "%d,%s,%.2f\n", contas[i].numero, contas[i].nome, contas[i].saldo);
  }

  fclose(arquivo);
}

void criarConta(Conta contas[]) {
  if (totalContas >= MAX_CONTAS) {
    printf("O sistema atingiu o limite de contas!");
    return;
  }

  int indice = totalContas;

  printf("--- CADASTRO ---\n");

  printf("Digite seu nome: ");
  fgets(contas[indice].nome, MAX_CONTAS, stdin);
  contas[indice].nome[strcspn(contas[indice].nome, "\n")] = '\0';
  contas[indice].numero = ids;
  contas[indice].saldo = 0.0;

  printf("Olá, %s! Sua conta foi criada com sucesso!\n", contas[indice].nome);

  printf("--- DADOS ---\n");
  printf("Número: %d\n", contas[indice].numero);
  printf("Nome: %s\n", contas[indice].nome);
  printf("Saldo: R$ %.2f\n", contas[indice].saldo);

  ids++;
  totalContas++;
}

void exibirContas(Conta contas[]) {
  if (totalContas == 0) {
    printf("Nenhuma conta cadastrada!\n");
    return;
  }

  for (int i = 0; i < totalContas; i++) {
    printf("\n--- CONTA %d ---\n", i + 1);
    printf("Número: %d\n", contas[i].numero);
    printf("Nome: %s\n", contas[i].nome);
    printf("Saldo: R$ %.2f\n\n", contas[i].saldo);
  }
}

void depositar(Conta contas[]) {
  int numero;
  printf("\nDigite o número da conta: ");
  scanf("%d", &numero);

  int indice = contaExiste(contas, numero);

  if (indice == -1) {
    printf("Conta não encontrada.\n");
    return;
  }

  float valorDeposito;
  printf("\nInforme o valor dopósito: ");
  scanf("%f", &valorDeposito);

  contas[indice].saldo += valorDeposito;

  printf("\n--- DADOS ATUALIADOS ---\n");
  printf("Número: %d\n", contas[indice].numero);
  printf("Nome: %s\n", contas[indice].nome);
  printf("Saldo: R$ %.2f\n\n", contas[indice].saldo);
}

void sacar(Conta contas[]) {
  int numero;
  printf("\nDigite o numero da conta: ");
  scanf("%d", &numero);

  int indice = contaExiste(contas, numero);

  if (indice == - 1) {
    printf("Conta não encontrada.\n");
    return;
  }

  float valorSaque;
  printf("\nInforme o valor do saque: ");
  scanf("%f", &valorSaque);

  if (valorSaque > contas[indice].saldo) {
    printf("Saldo em conta insuficiente.\n");
  }
  else {
    contas[indice].saldo -= valorSaque;

    printf("\n--- DADOS ATUALIZADOS ---\n");
    printf("Número: %d\n", contas[indice].numero);
    printf("Nome: %s\n", contas[indice].nome);
    printf("Saldo: R$ %.2f\n\n", contas[indice].saldo);
  }
}

void buscarConta(Conta contas[]) {
  int numero;
  printf("\nDigite o numero da conta: ");
  scanf("%d", &numero);

  int indice = contaExiste(contas, numero);

  if (indice == - 1) {
    printf("Conta não encontrada.\n");
    return;
  }

  printf("\n--- DADOS ---\n");
  printf("Número: %d\n", contas[indice].numero);
  printf("Nome: %s\n", contas[indice].nome);
  printf("Saldo: R$ %.2f\n\n", contas[indice].saldo);
}

void transferir(Conta contas[]) {
  int numeroOrigem;
  printf("\nInforme o número da conta de origem: ");
  scanf("%d", &numeroOrigem);

  int numeroDestino;
  printf("\nInforme o número da conta de destino: ");
  scanf("%d", &numeroDestino);

  int indiceOrigem = contaExiste(contas, numeroOrigem);
  int indiceDestino = contaExiste(contas, numeroDestino);

  if (indiceOrigem == -1 || indiceDestino == -1) {
    printf("Conta(s) nao encontrada(s)\n");
    return;
  }
 
  float valorTranferencia;
  printf("\nInforme o valor da transferência: ");
  scanf("%f", &valorTranferencia);

  if (valorTranferencia > contas[indiceOrigem].saldo) {
    printf("Saldo em conta insuficiente.\n");
  }
  else {
    contas[indiceOrigem].saldo -= valorTranferencia;
    contas[indiceDestino].saldo += valorTranferencia;

    printf("\n--- DADOS DA CONTA ORIGEM ---\n");
    printf("Número: %d\n", contas[indiceOrigem].numero);
    printf("Nome: %s\n", contas[indiceOrigem].nome);
    printf("Saldo: R$ %.2f\n\n", contas[indiceOrigem].saldo);

    printf("\n--- DADOS DA CONTA DESTINO ---\n");
    printf("Número: %d\n", contas[indiceDestino].numero);
    printf("Nome: %s\n", contas[indiceDestino].nome);
    printf("Saldo: R$ %.2f\n\n", contas[indiceDestino].saldo);
  }
}

void deletarConta(Conta contas[]) {
  int numero;
  printf("\nInforme o número da conta de origem: ");
  scanf("%d", &numero);

  int indice = contaExiste(contas, numero);

  if (indice == -1) {
    printf("Conta não encontrada.\n");
    return;
  }

  for (int i = indice; i < totalContas - 1; i++) {
    strcpy(contas[i].nome, contas[i + 1].nome);
    contas[i].numero = contas[i + 1].numero;
    contas[i].saldo = contas[i + 1].saldo;
  }

  printf("Conta deletada com sucesso!\n");

  strcpy(contas[totalContas - 1].nome, "");
  contas[totalContas - 1].numero = 0;
  contas[totalContas - 1].saldo = 0.0;

  totalContas--;
}

void editarConta(Conta contas[]) {
  int numero;
  printf("Informe o número da conta: ");
  scanf("%d", &numero);

  int indice = contaExiste(contas, numero);

  if (indice == -1) {
    printf("\nConta não encontrada!");
    return;
  }

  getchar();

  printf("\n--- DADOS DA CONTA ---\n");
  printf("Nome: %s", contas[indice].nome);
  printf("\nNovo nome: ");
  fgets(contas[indice].nome, MAX_CONTAS, stdin);
  contas[indice].nome[strcspn(contas[indice].nome, "\n")] = '\0';
  
  printf("\n\n--- DADOS ATUALIZADOS ---\n");
  printf("Número: %d\n", contas[indice].numero);
  printf("Nome: %s\n", contas[indice].nome);
  printf("Saldo: R$ %.2f", contas[indice].saldo);
}