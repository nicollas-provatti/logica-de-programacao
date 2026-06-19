# 📘 Aula 10 – Estruturas de Decisão
### 🔍 O que são comandos de decisão ?
Os comandos de decisão, também conhecidos como estruturas condicionais, são instruções que permitem ao programa **tomar diferentes caminhos** com base em **condições específicas**. Eles são essenciais para controlar o fluxo de execução do programa, permitindo que ele reaja de maneira diferente a diferentes entradas ou estados.

---

### 🔵 O comando `if`
O comando if é uma estrutura condicional que permite ao programa **executar um bloco** de código apenas se uma condição específica for **verdadeira**. 

**Sintaxe:**
```c
if (condição) {
    // Código a ser executado se a condição for verdadeira
}
```

**Como funciona ?**
O programa avalia a expressão dentro dos parênteses após `if`. Se a condição for verdadeira (não zero), o bloco de código entre as chaves `{}` é executado. Se a condição for falsa (zero), o bloco de código entre as chaves `{}` é ignorado.

**Exemplo:**
```c
int idade = 18;
if (idade >= 18) {
    printf("Maior de idade\n");
}
```

**Observação:**
Se você tiver vários comandos `if`, **todos** eles serão analisados individualmente. Isso significa que cada condição será avaliada, independentemente das outras.

---

### 🔵 O comando `if-else`
O comando `if-else` é uma extensão do comando `if` que permite especificar um **bloco de código alternativo** a ser executado quando a condição `if` é falsa. Ele é usado para criar uma ramificação no fluxo do programa, onde uma condição determina qual bloco de código será executado.

**Sintaxe:**
```c
if (condição) {
    // Código se a condição for verdadeira
} else {
    // Código se a condição for falsa
}
```

**Como funciona ?**
O programa avalia a expressão dentro dos parênteses após `if`. Se a condição for verdadeira (não zero), o bloco de código entre as primeiras chaves {} é executado. Se a condição for falsa (zero), o bloco de código entre as segundas chaves {} é executado.

**Exemplo:**
```c
int idade = 16;
if (idade >= 18) {
    printf("Maior de idade\n");
} else {
    printf("Menor de idade\n");
}
```

**Observações:**
- O bloco de código dentro do `else` é executado **apenas** se a condição do `if` for falsa.
- O `else` **não pode existir** sem um `if` correspondente.

---

### 🔵 Comandos `if-else` aninhados
Comandos `if-else` aninhados são estruturas condicionais onde um comando `if` ou else está contido dentro de outro `if` ou else. Eles permitem verificar múltiplas condições em sequência, permitindo que diferentes blocos de código sejam executados com base em várias condições.

**Sintaxe:**
```c
if (condição1) {
    // Código se a condição for verdadeira
} else {
    // Código se a condição for falsa
    if (condição2) {
        // Código se a condição for verdadeira
    } else {
        // Código se a condição for falsa
    }
}
```

**Como funciona ?**
O programa avalia a condição1. Se for verdadeira, executa o bloco de código correspondente. Caso contrário, executa o bloco do `else`. Dentro desse `else`, a condição2 será analisada e o processo se repete: se for verdadeira, executa seu respectivo bloco; caso contrário, executa o segundo `else`.

**Exemplo:**
```c
int idade = 16;
if (idade < 0) {
    printf("Idade inválida\n");
} else {
    if (idade >= 18) {
        printf("Maior de idade\n");
    } else {
        printf("Menor de idade\n");
    }
}
```

**Observação:**
- Aninhar múltiplos comandos `if-else` pode **aumentar a complexidade** do código, então é importante manter o código claro e bem organizado.

---

### 🔵 O comando `else if`
O comando `else if` é uma extensão do comando `if-else` que permite adicionar múltiplas condições em sequência. Ele é usado quando há mais de duas possibilidades de fluxo de controle no programa e queremos testar várias condições, uma após a outra.

**Sintaxe:**
```c
if (condição1) {
    // Código se condição1 for verdadeira
} else if (condição2) {
    // Código se condição2 for verdadeira
} else {
    // Código se nenhuma das condições anteriores for verdadeira
}
```

**Como funciona ?**
O programa avalia a condição1. Se condição1 for verdadeira (não zero), o bloco de código associado é executado, e todas as outras condições são ignoradas. Se condição1 for falsa, o programa avalia a condição2. Se condição2 for verdadeira, o bloco de código associado é executado, e todas as outras condições são ignoradas. Se todas as condições forem falsas, o bloco de código associado ao `else` é executado.


**Exemplo:**
```c
int idade = 16;
if (idade < 0) {
    printf("Idade inválida.\n");
} else if (idade >= 18) {
    printf("Maior de idade\n");
}else {
    printf("Menor de idade\n");
}
```

**Observações:**
- As condições são avaliadas em sequência, e a execução **para na primeira condição verdadeira**. Diferente se tivéssemos vários comandos `if`.
- O bloco else é opcional, mas é **uma boa prática** incluí-lo para lidar com casos onde todas as outras condições são falsas.

---

### 🔵 O comando `switch`
O comando `switch` é uma estrutura de controle de fluxo que permite a execução de diferentes blocos de código com base no valor de uma variável. Ele é particularmente útil quando se deseja comparar a mesma variável com diferentes valores de maneira eficiente.

**Sintaxe:**
```c
switch (variável) {
    case valor1:
        // Código a ser executado se a variável for igual a valor1
        break;
    case valor2:
        // Código a ser executado se a variável for igual a valor2
        break;
    default:
        // Código a ser executado se a variável não corresponder a nenhum caso
}
```

**Como funciona ?**
O programa avalia a variável dentro dos parênteses após `switch`. O valor da variável é comparado sequencialmente com cada `case`. Quando uma correspondência é encontrada, o bloco de código associado ao `case` correspondente é executado. A instrução `break` termina a execução do bloco de código do `case` atual e impede que o controle passe para o próximo `case`.
Se nenhum dos cases corresponder ao valor da expressão, o bloco de código dentro de `default` é executado.


**Exemplo:**
```c
int dia = 3;

switch (dia) {
    case 1:
        printf("Domingo\n");
        break;
    case 2:
        printf("Segunda-feira\n");
        break;
    case 3:
        printf("Terça-feira\n");
        break;
    default:
        printf("Dia inválido\n");
}
```

**Observação:**
- Cada `case` **deve terminar** com uma instrução `break` para evitar que o controle passe para o próximo case (efeito conhecido como "fall through").

- O bloco `default` é opcional, mas é uma **boa prática** incluí-lo para lidar com valores inesperados.

- O comando `switch` é mais eficiente que uma série de comandos `if-else` quando se trata de comparar **a mesma variável** com **vários valores diferentes**.

---

### 🔵 Boas práticas no uso de decisões
- **Evite usar muitas condições aninhadas:** Em vez de muitos `if-else` dentro de outros `if-else`, considere usar `switch-case` ou criar funções para tornar o código mais legível.

* **Use a estrutura mais apropriada:** Se você tiver apenas duas opções (verdadeiro ou falso), o `if-else` é a melhor escolha. Se você tiver muitas opções, o `switch-case` é mais limpo.

- **Mantenha o código organizado:** Sempre use chaves `{}` mesmo que haja apenas uma linha de código dentro de um bloco condicional. Isso ajuda a evitar erros futuros e torna o código mais fácil de manter.

* **Cuidado com a condição no if:** Evite expressões complexas ou difíceis de entender. Torne as condições simples e claras.