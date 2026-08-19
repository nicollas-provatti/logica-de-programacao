# 📘 Aula 3 – Decisão
### 🔍 O que são comandos de decisão ?
Os comandos de decisão, também conhecidos como estruturas condicionais, são instruções que permitem ao programa **tomar diferentes caminhos** com base em **condições específicas**. Eles são essenciais para controlar o fluxo de execução do programa, permitindo que ele reaja de maneira diferente a diferentes entradas ou estados.

---

### 🔵 O comando `se`
O comando `se` é uma estrutura condicional que permite ao programa **executar um bloco** de código apenas se uma condição específica for **verdadeira**. 

**Sintaxe:**
```portugol
se (condição) {
    // Código a ser executado se a condição for verdadeira
}
```

**Como funciona ?**
O programa avalia a expressão dentro dos parênteses após `se`. Se a condição for verdadeira, o bloco de código entre as chaves `{}` é executado. Se a condição for falsa, o bloco de código entre as chaves `{}` é ignorado.

**Exemplo:**
```portugol
inteiro idade = 18
se (idade >= 18) {
    escreva("Maior de idade")
}
```

**Observação:**
Se você tiver vários comandos `se`, **todos** eles serão analisados individualmente. Isso significa que cada condição será avaliada, independentemente das outras.

---

### 🔵 O comando `se-senao`
O comando `se-senao` é uma extensão do comando `se` que permite especificar um **bloco de código alternativo** a ser executado quando a condição `se` é falsa. Ele é usado para criar uma ramificação no fluxo do programa, onde uma condição determina qual bloco de código será executado.

**Sintaxe:**
```portugol
se (condição) {
    // Código se a condição for verdadeira
} senao {
    // Código se a condição for falsa
}
```

**Como funciona ?**
O programa avalia a expressão dentro dos parênteses após `se`. Se a condição for verdadeira, o bloco de código entre as primeiras chaves `{}` é executado. Se a condição for falsa, o bloco de código entre as segundas chaves `{}` é executado.

**Exemplo:**
```portugol
inteiro idade = 16
se (idade >= 18) {
    escreva("Maior de idade")
} senao {
    escreva("Menor de idade")
}
```

**Observações:**
- O bloco de código dentro do `senao` é executado **apenas** se a condição do `se` for falsa.
- O `senao` **não pode existir** sem um `se` correspondente.

---

### 🔵 Comandos `se-senao` aninhados
Comandos `se-senao` aninhados são estruturas condicionais onde um comando `se` ou else está contido dentro de outro `se` ou else. Eles permitem verificar múltiplas condições em sequência, permitindo que diferentes blocos de código sejam executados com base em várias condições.

**Sintaxe:**
```portugol
se (condição1) {
    // Código se a condição for verdadeira
} senao {
    // Código se a condição for falsa
    se (condição2) {
        // Código se a condição for verdadeira
    } senao {
        // Código se a condição for falsa
    }
}
```

**Como funciona ?**
O programa avalia a condição1. Se for verdadeira, executa o bloco de código correspondente. Caso contrário, executa o bloco do `senao`. Dentro desse `senao`, a condição2 será analisada e o processo se repete: se for verdadeira, executa seu respectivo bloco; caso contrário, executa o segundo `senao`.

**Exemplo:**
```portugol
inteiro idade = 16
se (idade < 0) {
    escreva("Idade inválida")
} senao {
    se (idade >= 18) {
        escreva("Maior de idade")
    } senao {
        escreva("Menor de idade")
    }
}
```

**Observação:**
- Aninhar múltiplos comandos `se-nao` pode **aumentar a complexidade** do código, então é importante manter o código claro e bem organizado.

---

### 🔵 O comando `senao se`
O comando `senao se` é uma extensão do comando `senao se` que permite adicionar múltiplas condições em sequência. Ele é usado quando há mais de duas possibilidades de fluxo de controle no programa e queremos testar várias condições, uma após a outra.

**Sintaxe:**
```portugol
se (condição1) {
    // Código se condição1 for verdadeira
} senao se (condição2) {
    // Código se condição2 for verdadeira
} senao {
    // Código se nenhuma das condições anteriores for verdadeira
}
```

**Como funciona ?**
O programa avalia a condição1. Se condição1 for verdadeira, o bloco de código associado é executado, e todas as outras condições são ignoradas. Se condição1 for falsa, o programa avalia a condição2. Se condição2 for verdadeira, o bloco de código associado é executado, e todas as outras condições são ignoradas. Se todas as condições forem falsas, o bloco de código associado ao `senao` é executado.


**Exemplo:**
```portugol
inteiro idade = 16
se (idade < 0) {
    escreva("Idade inválida")
} senao se (idade >= 18) {
    escreva("Maior de idade")
} senao {
    escreva("Menor de idade")
}
```

**Observações:**
- As condições são avaliadas em sequência, e a execução **para na primeira condição verdadeira**. Diferente se tivéssemos vários comandos `se`.
- O bloco else é opcional, mas é **uma boa prática** incluí-lo para lidar com casos onde todas as outras condições são falsas.

---

### 🔵 O comando `escolha`
O comando `escolha` é uma estrutura de controle de fluxo que permite a execução de diferentes blocos de código com base no valor de uma variável. Ele é particularmente útil quando se deseja comparar a mesma variável com diferentes valores de maneira eficiente.

**Sintaxe:**
```portugol
escolha (variável) {
    caso valor1:
        // Código a ser executado se a variável for igual a valor1
        break;
    caso valor2:
        // Código a ser executado se a variável for igual a valor2
        break;
    caso contrario:
        // Código a ser executado se a variável não corresponder a nenhum caso
}
```

**Como funciona ?**
O programa avalia a variável dentro dos parênteses após `escolha`. O valor da variável é comparado sequencialmente com cada `caso`. Quando uma correspondência é encontrada, o bloco de código associado ao `caso` correspondente é executado. A instrução `pare` termina a execução do bloco de código do `caso` atual e impede que o controle passe para o próximo `caso`.
Se nenhum dos cases corresponder ao valor da expressão, o bloco de código dentro de `caso contrario` é executado.


**Exemplo:**
```portugol
inteiro dia = 3

escolha (dia) {
    caso 1:
        escreva("Domingo")
        pare
    caso 2:
        escreva("Segunda-feira")
        pare
    caso 3:
        escreva("Terça-feira")
        pare
    default:
        escreva("Dia inválido")
}
```

**Observação:**
- Cada `caso` **deve terminar** com uma instrução `pare` para evitar que o controle passe para o próximo case (efeito conhecido como "fall through").

- O bloco `caso contrario` é opcional, mas é uma **boa prática** incluí-lo para lidar com valores inesperados.

- O comando `escolha` é mais eficiente que uma série de comandos `se-senao` quando se trata de comparar **a mesma variável** com **vários valores diferentes**.

---

### 🔵 Boas práticas no uso de decisões
- **Evite usar muitas condições aninhadas:** Em vez de muitos `se-senao` dentro de outros `se-senao`, considere usar `escolha-caso` ou criar funções para tornar o código mais legível.

* **Use a estrutura mais apropriada:** Se você tiver apenas duas opções (verdadeiro ou falso), o `se-senao` é a melhor escolha. Se você tiver muitas opções, o `escolha-caso` é mais limpo.

- **Mantenha o código organizado:** Sempre use chaves `{}` mesmo que haja apenas uma linha de código dentro de um bloco condicional. Isso ajuda a evitar erros futuros e torna o código mais fácil de manter.

* **Cuidado com a condição no if:** Evite expressões complexas ou difíceis de entender. Torne as condições simples e claras.

---