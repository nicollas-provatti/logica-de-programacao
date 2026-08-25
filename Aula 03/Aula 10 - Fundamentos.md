# 📘 Aula 10 – Fundamentos

### 🔵 Tipos de Dados Primitivos
A linguagem C possui **tipos de dados básicos** que determinam o tipo de valor que pode ser armazenado em uma variável.

|Tipo	|Descrição	|
|-------|-----------|
|`int`	|Armazena números inteiros|
|`float`	|Armazena números reais (menos preciso)|
|`double`	|Armazena números reais (mais preciso)|
|`char`	|Armazena um único caractere|
|`void`	|Representa ausência de valor	Usado em funções|

---

### 🔵 Variáveis e Constantes

#### 🔍 O que são variáveis ?
São espaços nomeados na memória que **armazenam dados**. O valor de uma variável pode ser alterado durante a execução do programa.

<br>

#### 🔹 **Declaração de variáveis:**
Declarar uma variável é o mesmo que **criar uma variável**. Ao fazer isso, um espaço na memória é reservado para armazenar algum dado. Durante a criação da variável, é necessário informar o **tipo de dado** que ela vai guardar e **dar um nome** (identificador) a ela. Esse nome será usado para acessar o valor armazenado sempre que for necessário.

**Exemplo:**
```c
int numero;
```

#### 🔹 **Atribuição de variáveis:**
Após criar uma variável, é possível **guardar uma informação** dentro dela. Esse processo é chamado de atribuição.

**Exemplo:**
```c
int numero;
numero = 10;
```

#### 🔹 **Inicialização de variráveis:**
Quando a declaração e a atribuição são feitas na **mesma linha**, chamamos esse processo de inicialização. Inicializar uma variável significa atribuir um valor a ela **no momento em que ela é criada**.

**Exemplo:**
```c
int numero = 10;
```
<br>

#### 🔹 Regras para Nomeação de Variáveis
✅ **Boas práticas:**

- Nomes devem ser descritivos e fáceis de entender (`idade`, `precoProduto`).
- Usar letras minúsculas e `camelCase` para múltiplas palavras (`quantidadeMaxima`).
- Utilizar apenas letras, números e o caractere "_" (`nome_usuario`).
- Sempre começar com uma letra (não pode iniciar com números ou caracteres especiais).

❌ **Evite:**

- Usar acentos e caracteres especiais (`preço`, `número` ❌).
- Começar com números (`1idade`, 2no`me ❌).
- Utilizar palavras reservadas da linguagem (`int`, `float` ❌).

<br>

#### 🔹 Constantes
São variáveis cujo valor **não pode ser alterado** após a atribuição. Para declarar uma constante usamos a palavra reservada `const`.

**Exemplo:**
```c
const int NUMERO = 10;

NUMERO = 12; // ❌ Erro: não é possível reatribuir uma constante
```
Existe uma convenção em programação na qual os nomes (identificadores) de constantes são escritos em **letras maiúsculas**. Essa prática ajuda a diferenciar constantes de outras variáveis no código.

---

### 🔵 Operadores
Os operadores são símbolos que instruem o compilador a **realizar operações específicas** com variáveis e valores. Em C, os operadores estão divididos em várias categorias:

#### 🔹 Aritméticos
Utilizados para **operações matemáticas** básicas:

|Operador | Operação       | Exemplo|
|---------|----------------|--------|
| `+`       | Soma         |  `x + y` |
|`-`       | Subtração      | `x - y` |
| `*`       | Multiplicação  | `x * y` |
| `/`       | Divisão        | `x / y` |
| `%`       | Módulo (resto) |  `x % y` |

#### 🔹 Atribuição
Usados para **atribuir valores** a variáveis:

|Operador | Operação       | Exemplo|
|---------|----------------|--------|
| `=`       | Atribuição simples         |  `a = 10` |

#### 🔹 Aritméticos de Atribuição
São formas **resumidas** de aplicar uma operação e atribuir o resultado na mesma variável:

| Operador | Equivalente a | Exemplo   |
|----------|----------------|-----------|
| `+=`     | `x = x + y`    | `x += 2;` |
| `-=`     | `x = x - y`    | `x -= 3;` |
| `*=`     | `x = x * y`    | `x *= 4;` |
| `/=`     | `x = x / y`    | `x /= 2;` |
| `%=`     | `x = x % y`    | `x %= 5;` |

#### 🔹 Relacionais
**Comparam valores** e retornam 1 (verdadeiro) ou 0 (falso):

| Operador | Significado       | Exemplo   |
|----------|-------------------|-----------|
| `==`     | Igual a           | `a == b`  |
| `!=`     | Diferente de      | `a != b`  |
| `>`      | Maior que         | `a > b`   |
| `<`      | Menor que         | `a < b`   |
| `>=`     | Maior ou igual    | `a >= b`  |
| `<=`     | Menor ou igual    | `a <= b`  |


#### 🔹 Lógicos
Usados para **expressões booleanas** (verdadeiras ou falsas):

| Operador | Significado         | Exemplo             |
|----------|---------------------|---------------------|
| `&&`     | E lógico (AND)      | `(x > 0 && x < 100)`|
|  `\|\|`     |  OU lógico (OR)     | `(x > 0 \|\| x < 100)`|
| `!`      | NÃO lógico (NOT)    | `!(x == 0)`         |

#### 🔹 Incremento e Decremento
Servem para **adicionar ou subtrair 1** de uma variável, com dois formatos:

| Operador | Descrição       | Exemplo            |
|----------|------------------|--------------------|
| `++`     | Incrementa em 1  | `x++;` ou `++x;`   |
| `--`     | Decrementa em 1  | `x--;` ou `--x;`   |

A diferença está na **ordem da execução**:
- `++x`: incrementa antes de usar o valor
- `x++`: incrementa depois de usar o valor

#### 🔹 Operador de Endereço

| Operador | Significado                                       | Exemplo |
|----------|---------------------------------------------------|---------|
| `&`      | Retorna o endereço de memória de uma variável     | `&x`    |

Será usado bastante quando começarmos a trabalhar com ponteiros.

#### 🔹 Operador Ternário
Forma compacta de um **if/else**. Tem três partes:

```c
condição ? valor_se_verdadeiro : valor_se_falso;
```

**Exemplos:**
```c
int idade = 16;
int maiorDeIdade = idade >= 18 ? 1 : 0;
```
Neste exemplo, usamos o **operador ternário** para atribuir um valor à variável `maiorDeIdade` com base em uma condição: se a variável `idade` for maior ou igual a 18, `maiorDeIdade` recebe o valor 1 (verdadeiro); caso contrário, recebe 0 (falso). No exemplo, como `idade` é 16, que é menor que 18, a condição é falsa e `maiorDeIdade` será igual a 0. Esse operador é uma forma compacta de escrever uma estrutura condicional `if-else`.


```c
int idade = 16;
idade >= 18 ? printf("Maior de idade\n") : printf("Menor de idade\n");
```
Neste exemplo, usamos o **operador ternário** para decidir qual mensagem imprimir com base no valor da variável `idade`. A ideia é: se `idade >= 18`, imprime `"Maior de idade"`, senão imprime `"Menor de idade"`.

---

#### 🔵 Precedência de Operadores
A ordem em que os operadores são avaliados é importante para garantir que o resultado esteja correto.

**Ordem da Precedência (maior para menor):**

1. `()` – Parênteses

2. `!`

3. `*`, `/`, `%`

4. `+`, `-`

5. `<`, `>`, `<=`, `>=`

6. `==`, `!=`

7. `&&`

8. `||`

Use parênteses para garantir clareza:
```c
int resultado = (2 + 3) * 4; // resultado = 20
```

---

### 🔵 Entrada e Saída de Dados

#### 🔹 Função `printf()`
Usada para **exibir mensagens** e valores no terminal. É possível combinar textos com variáveis usando especificadores de formato.

```c
#include <stdio.h>

int main() {
    int idade = 20;
    printf("Idade: %d\n", idade);
    return 0;
}

```

| Especificador | Tipo de dado           |
|---------------|------------------------|
| `%d`          | `int`                  |
| `%f`          | `float`                |
| `%lf`         | `double`               |
| `%c`          | `char`                 |
| `%s`          | `string` (`char[]`)    |
| `%p`          | `endereço`             |

**Exemplo com vários tipos:**
```c
#include <stdio.h>

int main() {
    float nota = 9.5;
    char letra = 'A';

    printf("Nota: %.2f - Conceito: %c\n", nota, letra);

    return 0;
}
```

O `\n` é usado para **pular uma linha** no final da impressão. Já o `%.2f` é utilizado para formatar números decimais, arredondando o valor e exibindo apenas duas casas decimais. O número após o ponto (`.2`) indica quantas casas decimais serão mostradas na saída.

#### 🔹 Função `scanf()`
Usada para **ler dados digitados pelo usuário**. É necessário usar o símbolo `&` para passar o endereço da variável onde o valor será armazenado (exceto em strings).

```c
#include <stdio.h>

int main() {
    int idade;
    scanf("%d", &idade);
    return 0;
}

```

**Exemplo completo:**
```c
#include <stdio.h>

int main() {
    int idade;
    float altura;

    printf("Digite sua idade: ");
    scanf("%d", &idade);
    printf("Digite sua altura: ");
    scanf("%f", &altura);

    printf("Idade: %d - Altura: %.2f\n", idade, altura);

    return 0;
}
```

Também é possível fazer assim:

```c
#include <stdio.h>

int main() {
    int idade;
    float altura;

    printf("Digite sua idade e altura:\n");
    scanf("%d %f", &idade, &altura);

    printf("Idade: %d - Altura: %.2f\n", idade, altura);

    return 0;
}

```

**Atenção:** Em strings (vetores de char), o & não é necessário:
```c
#include <stdio.h>

int main() {
    char nome[50];
    scanf("%s", nome);
    return 0;
}
```
O tópico sobre strings será abordado mais pra frente.

---