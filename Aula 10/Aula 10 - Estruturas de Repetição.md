# 📘 Aula 10 – Estruturas de Repetição

###  🔍 O que são laços de repetição ?
Laços são comandos usados sempre que uma ou mais instruções tiverem de ser repetidas enquanto uma certa condição estiver sendo satisfeita. Em C existem três comandos de laços: `for`, `while`  e `do-while`.

---

###  🔵 O laço `for`
O laço for é uma estrutura de repetição que permite executar um bloco de código um número específico de vezes. Ele é especialmente útil quando sabemos antecipadamente quantas vezes queremos repetir uma instrução ou conjunto de instruções e possui três partes: inicialização, condição e incremento.

**Sintaxe:**
```c
for (inicialização; condição; incremento) {
    // instruções
}
```

**Como funciona ?**
- **Inicialização**: Executada uma vez no início do laço, usada para definir e inicializar variáveis de controle.

- **Condição**: Avaliada antes de cada iteração. Se a condição for verdadeira, o bloco de código é executado.

- **Incremento**: Executado após cada iteração, geralmente usado para atualizar a variável de controle.

**Exemplo:**
```c
for (int i = 0; i < 5; i++) {
    printf("%d\n", i);
}
```
Define e inicializa a variável `i` com o valor **0**. Esta parte do código é executada **apenas uma vez**, no início do laço.
Antes de cada iteração, a condição `i < 5` é avaliada. Se a condição for **verdadeira**, o bloco de código dentro do laço é executado. Se a condição for **falsa**, o laço termina e a execução continua após o bloco de código do laço.
Após cada iteração, a expressão `i++`é executada, incrementando `i` em **1**. Depois do incremento, o controle volta para a avaliação da condição para a próxima iteração.
O laço `for` nesse exemplo executa o bloco de código **cinco vezes**, imprimindo os valores de **0** a **4**.

---

### 🔵 O laço `while`
O laço `while` é uma estrutura de repetição que executa um bloco de código enquanto uma condição específica for verdadeira. Ele é utilizado quando não sabemos quantas vezes precisamos repetir uma operação, mas sabemos a condição para continuar a repetição.

**Sintaxe:**
```c
// inicialização
while (condição) {
    // instruções

    // incremento
}
```

**Como funciona ?**
A condição é avaliada antes de cada iteração. Se for verdadeira, o bloco de código é executado. Se a condição for falsa, a execução do laço termina e o controle passa para a instrução seguinte.


**Exemplo:**
```c
int i = 0;
while (i < 5) {
    printf("%d\n", i);
    i++;
}
```

Inicializamos a variável `i` com o valor **0**. Essa variável será usada como a variável de controle para o laço `while`.
Antes de cada iteração, a condição `i < 5` é avaliada. Se a condição for **verdadeira**, o bloco de código dentro do laço é executado. Se a condição for **falsa**, o laço termina e a execução continua após o bloco de código do laço.

---

###  🔵 O laço `do-while`
O laço `do-while` é semelhante ao laço `while`, mas a condição é avaliada após a execução do bloco de código. Isso garante que o bloco de código seja executado pelo menos uma vez.

**Sintaxe:**
```c
// inicialização
do {
    // instruções

    // incremento
} while (condição);
```

**Como funciona ?**
O bloco de código é executado uma vez antes da avaliação da condição.  Após a execução do bloco de código, a condição é avaliada. Se for **verdadeira**, o bloco de código é executado novamente.

**Exemplo:**
```c
int senha;
do {
    printf("Digite a senha: ");
    scanf("%d", &senha);
} while (senha != 1234);
```

Primeiro, o bloco dentro do `do` é executado, onde é exibida a mensagem `"Digite a senha"` e a entrada é lida com `scanf`. Só depois disso a condição `while` (senha != 1234) é avaliada. Se a condição for verdadeira (ou seja, a senha estiver incorreta), o laço se repete. Esse comportamento é útil quando queremos que determinada ação aconteça ao menos uma vez antes de verificar a condição.

---

###  🔵 Diferença entre os laços

|Estrutura    |	Quando usar|
|-------------|------------|
| `for`	      |Quando não sabemos quantas repetições serão necessárias |
| `while`     |Quando queremos garantir ao menos uma execução |
| `do-while`  | Quandosabemos o número exato de repetições |

---

###  🔵 Controle de laço

#### 🔹 **`break`**
Interrompe o laço imediatamente.

**Exemplo:**

```c
for (int i = 1; i <= 10; i++) {
    if (i == 5) {
        break;
    }
    printf("%d ", i);
}
// Saída: 1 2 3 4
```

#### 🔹 **`continue`**
Pula o restante do bloco e vai para a próxima iteração.

**Exemplo:**

```c
for (int i = 1; i <= 5; i++) {
    if (i == 3) continue;
    printf("%d ", i);
}
// Saída: 1 2 4 5
```
---
 