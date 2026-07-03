# 📘 Aula 14 – String

### 🔍 O que é string ?
Uma string em C é uma **sequência de caracteres** terminada com o caractere nulo `\0`. Diferente de algumas outras linguagens de programação, C não possui um tipo de dado específico para strings. Em vez disso, strings são manipuladas como **arrays de caracteres**.

---

### 🔵 Operações com strings

**Declaração:**
Você pode declarar uma string de várias maneiras. A forma mais comum é usando um array de caracteres. Aqui está um exemplo básico:
```c
char nome[6];
```

**Inicialização:**
```c
char nome[6] = "Alice";
```
Neste exemplo, a string `"Alice"` é armazenada no array `nome`. É importante notar que o tamanho do array deve ser suficiente para armazenar todos os caracteres da string  mais o caractere nulo `\0`.

Uma forma mais simples de declarar e inicializar uma string é:

```c
char nome[] = "Alice";
```
Dessa forma o compilador irá automaticamente calcular o tamanho necessário do array.

**Acesso:**
Você pode acessar cada caractere de uma string usando a notação de **índice**, assim como faria com um array comum:
```c
char primeiraLetra = nome[0]; // Acessa 'A' 
char segundaLetra = nome[1];  // Acessa 'l'
```
Para modificar uma string, basta atribuir um novo valor a um índice específico:
```c
nome[0] = 'M'; // Agora "nome" é "Mlice"
```

---

### 🔵 O caractere nulo `\0`
Devido a importância do caractere nulo `\0`, no contexto de strings,  resolvi deixar um tópico exclusivo para falar apenas sobre ele. Como já foi falado, o caractere nulo `\0`  indica o fim de uma string. Mas qual a importância disso na prática ?

Quando uma string é armazenada em um array de caracteres, o caractere nulo `\0` é automaticamente adicionado ao final da sequência de caracteres durante a inicialização, seja ela feita de forma explícita ou implícita. Ele age como um sinalizador para o final da string, permitindo que funções e loops saibam onde parar ao manipular a string.

**Exemplo:**
```c
char saudacao[] = "Hello";

```
Neste exemplo, a string `"Hello"` é armazenada no array `saudacao` da seguinte forma:

```c
['H', 'e', 'l', 'l', 'o', '\0']
```

O array tem seis elementos: os cinco caracteres da palavra `"Hello"` e o caractere nulo `\0`.

<br>

#### 🔹 **A importância do `\0` para funções:**
Quando você lê ou manipula strings em C, várias funções dependem do caractere nulo para saber onde a string termina. Por exemplo, ao usar a função `printf()` para imprimir uma string, o `\0` informa ao programa onde parar a impressão:

```c
printf("%s", saudacao);
```

Aqui, a função `printf()` continua lendo e imprimindo caracteres até encontrar o `\0`, que sinaliza o fim da string. Se o caractere nulo estivesse ausente, o programa continuaria a ler memória adjacente, o que poderia causar a impressão de dados não intencionais ou mesmo levar a erros.

<br>

#### 🔹 **O importância do `\0` para loops**
Suponha que você queira imprimir uma string caractere por caractere usando um loop:

```c
#include <stdio.h>

int main() {
    char nome[] = "Alice";
    int i = 0;

    while (nome[i]!= '\0') {
        printf("%c\n", nome[i]);
        i++;
    }
    return 0;
}
```

Nesse código, o loop `while`continua até encontrar o caractere nulo `\0`. Quando isso acontece, o loop para, garantindo que apenas os caracteres da string sejam impressos.

Em resumo, o caractere nulo `\0` é vital para o funcionamento correto das strings em C. Ele define claramente onde a string termina, permitindo que funções e loops saibam onde parar ao trabalhar com strings. Sem o `\0`, manipular strings em C se torna perigoso e propenso a erros, o que reforça a importância de sempre garantir que ele esteja presente ao final de uma string.

---

### 🔵 Leitura de Strings
A leitura de strings em C é um aspecto essencial quando se trata de manipular e processar dados textuais. Como strings em C são representadas por arrays de caracteres, é importante entender como ler e armazenar essas sequências de caracteres corretamente. Existem várias maneiras de ler strings do usuário, e cada uma tem suas particularidades. 


#### 🔹 **Estouro de buffer:**
Antes de vermos as formas de ler uma strings é preciso entender o que é o **estouro de buffer**. O estouro de buffer  é uma vulnerabilidade que ocorre quando um programa tenta **escrever mais dados em um buffer** (uma área de memória reservada) do que o buffer pode armazenar. Isso pode levar a comportamentos inesperados, corrompimento de dados e, em casos mais graves, brechas de segurança que podem ser exploradas por atacantes para ganhar controle sobre o sistema.

Em C, o estouro de buffer geralmente ocorre devido à falta de verificação do tamanho dos dados que estão sendo copiados ou lidos para um buffer. Como C permite acesso direto à memória, sem verificar automaticamente os limites dos arrays, é fácil escrever além do final de um buffer se não houver cuidado suficiente.

**Exemplo:**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char buffer[10];
    strcpy(buffer, "Esta string é muito longa!");
    printf("Buffer: %s\n", buffer);
    return 0;
}
```
Um array de 10 caracteres (`buffer[10]`) é declarado. A função `strcpy()` copia a string `"Esta string é muito longa!"` para o buffer. No entanto, a string tem mais de 10 caracteres. Como o buffer só tem espaço para 10 caracteres, a string copiada vai além desse limite, sobrescrevendo a memória adjacente.

Em resumo, O estouro de buffer é uma falha que ocorre quando dados excedem o tamanho de um buffer, corrompendo a memória adjacente e potencialmente criando uma vulnerabilidade de segurança. É uma das causas mais comuns de bugs e falhas de segurança em software, especialmente em linguagens como C, que oferecem acesso direto à memória sem verificação automática de limites. A prevenção envolve práticas como verificação rigorosa dos limites dos buffers, uso de funções seguras e alocação dinâmica de memória.

#### 🔹 **Usando o `scanf()`:**
A maneira mais básica de ler uma string em C é usando a função `scanf()`. No entanto, `scanf()` tem algumas limitações que precisam ser consideradas.

**Exemplo:**
```c
#include <stdio.h>

int main() {
    char nome[50];

    printf("Digite seu nome completo: ");
    scanf("%s", nome);

    printf("Olá, %s!\n", nome);

    return 0;
}
```
Quando usamos o `scanf("%s", nome)`, ele lê uma string e a armazena no array `nome`. No entanto, o `scanf()` tem um comportamento importante: ele lê a string até encontrar um espaço em branco (espaço, tabulação ou nova linha). Isso significa que, se o usuário digitar algo como "João Silva", apenas "João" será armazenado em `nome`, e o resto da entrada será ignorado. Além disso, como estamos lidando com um array de caracteres, não precisamos usar o `&` ao passar o nome para o `scanf()`, pois o nome já é um ponteiro para o primeiro caractere do array.

Outro ponto importante a considerar é que o `scanf()` **não verifica o tamanho do array**, o que pode levar a um problema de **estouro de buffer** se o usuário inserir mais caracteres do que o espaço disponível no array. Esse comportamento pode ser perigoso e levar a falhas no programa.

```c
#include <stdio.h>

int main() {
    char nome[50];

    printf("Digite seu nome completo: ");
    scanf("%[^\n]", nome);  // Lê a linha inteira até encontrar a nova linha '\n'

    printf("Nome completo: %s\n", nome);

    return 0;
}
```
O especificador `%[^\n]` diz ao `scanf()` para ler até encontrar uma nova linha (`\n`), o que permite que o usuário insira um nome completo, incluindo espaços. Essa abordagem resolve o problema de o `scanf()` parar na primeira ocorrência de espaço em branco.

Porém essa técnica só resolve um dos problemas do `scanf()` ainda é preciso fazer a verificação da largura do buffer. Podemos usar o especificador de largura.

**Exemplo:**

```c
#include <stdio.h>

int main() {
    char nome[50];

    printf("Digite seu nome completo: ");
    scanf("%49[^\n]", nome);  // Lê a linha inteira até encontrar a nova linha '\n'

    printf("Nome completo: %s\n", nome);

    return 0;
}
```
No exemplo, o `49` limita a leitura a 49 caracteres, garantindo que haja espaço para o caractere nulo `\0` no array de 100 posições.

Embora o uso de `%[]` no` scanf()` seja flexível e útil para capturar strings com espaços, o `fgets()` ainda é preferido em muitos casos por sua segurança inerente contra estouros de buffer. 

#### 🔹 **Usando o `fgets()`:**
A função `fgets()` é a maneira mais segura e recomendada para ler strings em C, pois permite a leitura de strings com espaços em branco e protege contra estouros de buffer.

**Exemplo:**

```c
#include <stdio.h>

int main() {
    char nome[50];

    printf("Digite seu nome completo: ");
    fgets(nome, 50, stdin);

    printf("Nome completo: %s\n", nome);

    return 0;
}
```

A função `fgets(nome, 50, stdin)` permite que o usuário digite uma sequência de caracteres, incluindo espaços. Ela lê até 49 caracteres (o último espaço é reservado para o caractere nulo `\0`, que marca o fim da string) e armazena esses caracteres no array `nome`. Ao contrário do `scanf("%s")`, o `fgets()` pode lidar com espaços, o que significa que uma entrada como "João Silva" será lida corretamente como uma única string.

Entretanto, o `fgets()` também captura o caractere de nova linha (`\n`) quando o usuário pressiona Enter após a digitação. Isso pode ser indesejável, pois o `\n` pode ser tratado como parte da string, afetando a forma como o programa processa ou exibe a entrada.

Para resolver isso, podemos remover o caractere de nova linha utilizando a função `strcspn()`, que encontra o índice do caractere de nova linha (`\n`) na string. A linha de código:

```c
nome[strcspn(nome, "\n")] = '\0';
```

funciona da seguinte forma:

- `strcspn(nome, "\n")` retorna o índice da primeira ocorrência do caractere `\n` na string `nome`.
- Substituímos o caractere `\n` por `\0` (o caractere nulo), efetivamente terminando a string antes do caractere de nova linha e removendo-o da entrada.

**Exemplo completo:**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char nome[50];

    printf("Digite seu nome completo: ");
    fgets(nome, 50, stdin);

    // Remove o caractere de nova linha se presente
    nome[strcspn(nome, "\n")] = '\0';

    printf("Nome completo: %s\n", nome);

    return 0;
}
```

Essas práticas garantem que a leitura de strings em C seja feita de maneira eficiente e segura, evitando erros comuns e vulnerabilidades.

---

### 🔵  Funções da Biblioteca `<string.h>`
A biblioteca padrão de C (`<string.h>`) oferece várias funções úteis para manipulação de strings. Aqui estão algumas das mais comuns:

#### 🔹 **`strlen()`:**
A função `strlen()` retorna o tamanho de uma string, ou seja, o número de caracteres antes do `\0`.

**Exemplo:** 
```c
char nome[] = "João";
int tamanho = strlen(nome); // Retorna 4 (não conta o '\0')
```
#### 🔹 **`strcpy()`:**
A função `strcpy()` copia o conteúdo de uma string para outra. **Cuidado** com o estouro de buffer!

**Exemplo:** 
```c
char origem[] = "João";
char destino[10];
strcpy(destino, origem); // Copia "João" para destino
```

#### 🔹 **`strcat()`:**
A função `strcat()` concatena (anexa) uma string no final de outra.

**Exemplo:** 
```c
char str1[20] = "João ";
char str2[] = "Silva";
strcat(str1, str2); // Resultado: "João Silva"
```
**Nota:** Certifique-se de que o vetor de destino tem espaço suficiente para armazenar o conteúdo de ambas as strings.

#### 🔹 **`strcmp()`:**
A função `strcmp()` compara duas strings lexicograficamente (ou seja, a ordem alfabética dos caracteres no conjunto de caracteres ASCII). Retorna:

- **0** se as strings forem iguais
- **Valor negativo** se a primeira string for lexicograficamente menor
- **Valor positivo** se a primeira string for maior

**Exemplo:** 
```c
char str1[] = "João";
char str2[] = "José";
int resultado = strcmp(str1, str2); // Comparação lexicográfica
```
---
