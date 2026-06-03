# 📘 Aula 5 – Repetição: Parte II

---

### 🔵 O laço `enquanto`
O laço `enquanto` é uma estrutura de repetição que executa um bloco de código enquanto uma condição específica for verdadeira. Ele é utilizado quando não sabemos quantas vezes precisamos repetir uma operação, mas sabemos a condição para continuar a repetição.

**Sintaxe:**
```c
// inicialização
enquanto (condição) {
    // instruções

    // incremento
}
```

**Como funciona ?**
A condição é avaliada antes de cada iteração. Se for verdadeira, o bloco de código é executado. Se a condição for falsa, a execução do laço termina e o controle passa para a instrução seguinte.


**Exemplo:**
```portugol
inteiro i = 0
enquanto (i < 5) {
    escreva(i, "\n")
    i++
}
```

Inicializamos a variável `i` com o valor **0**. Essa variável será usada como a variável de controle para o laço `enquanto`.
Antes de cada iteração, a condição `i < 5` é avaliada. Se a condição for **verdadeira**, o bloco de código dentro do laço é executado. Se a condição for **falsa**, o laço termina e a execução continua após o bloco de código do laço.

---

###  🔵 O laço `faca-enquanto`
O laço `faca-enquanto` é semelhante ao laço `enquanto`, mas a condição é avaliada após a execução do bloco de código. Isso garante que o bloco de código seja executado pelo menos uma vez.

**Sintaxe:**
```portugol
// inicialização
faca {
    // instruções

    // incremento
} enquanto (condição)
```

**Como funciona ?**
O bloco de código é executado uma vez antes da avaliação da condição.  Após a execução do bloco de código, a condição é avaliada. Se for **verdadeira**, o bloco de código é executado novamente.

**Exemplo:**
```portugol
inteiro senha
faca {
    escreva("Digite a senha: ")
    leia(senha)
} enquanto (senha != 1234);
```

Primeiro, o bloco dentro do `faca` é executado, onde é exibida a mensagem `"Digite a senha"` e a entrada é lida com `leia()`. Só depois disso a condição `enquanto` (senha != 1234) é avaliada. Se a condição for verdadeira (ou seja, a senha estiver incorreta), o laço se repete. Esse comportamento é útil quando queremos que determinada ação aconteça ao menos uma vez antes de verificar a condição.

---

###  🔵 Diferença entre os laços

|Estrutura    |	Quando usar|
|-------------|------------|
| `para`	      |Quando não sabemos quantas repetições serão necessárias |
| `enquanto`     |Quando queremos garantir ao menos uma execução |
| `faca-enquanto`  | Quandosabemos o número exato de repetições |

---

###  🔵 Controle de laço

#### 🔹 **`pare`**
Interrompe o laço imediatamente.

**Exemplo:**

```portugol
para (inteiro i = 1; i <= 10; i++) {
    se (i == 5) {
        pare
    }
    escreva(i, "\n");
}
// Saída: 1 2 3 4
```

---
 