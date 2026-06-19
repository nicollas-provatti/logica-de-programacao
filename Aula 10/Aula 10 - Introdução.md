# 📘 Aula 10 – Introdução à Linguagem C

### 🔵 História da Linguagem C
A linguagem C foi criada no início dos anos 1970 por Dennis Ritchie, nos laboratórios da Bell Labs. Ela surgiu como uma evolução das linguagens B e BCPL, com o objetivo de desenvolver o sistema operacional Unix.
Desde então, C se tornou uma das linguagens mais influentes da computação, servindo como base para muitas outras, como C++, Java e até Python em sua implementação.

---

### 🔵 Características da Linguagem C
- Linguagem de propósito geral: Pode ser usada para sistemas operacionais, jogos, drivers, sistemas embarcados etc.

- **Alto desempenho:** É rápida, próxima do hardware, ideal para aplicações que exigem desempenho.

- **Portabilidade:** Programas escritos em C podem ser compilados em diversos sistemas.

- **Modularidade:** Suporte ao uso de funções para organização do código.

- **Sintaxe enxuta:** Usa poucos comandos e estruturas simples.

- **Controle de memória:** O programador tem total controle da alocação e liberação de memória.

---

### 🔵 Estrutura Básica de um Programa em C
**Todo programa** em C precisa ter a função `main()`, que é o **ponto de entrada** da execução. Abaixo está a estrutura mínima de um programa:
```c
#include <stdio.h>

int main() {
    printf("Olá, mundo!\n");
    return 0;
}
```
**Explicação:**
- `#include <stdio.h> `→ importa a biblioteca padrão de **entrada e saída**.
- `int main()` → função **principal** do programa.
- `printf()` → função usada para **imprimir mensagens** na tela.
- `return 0;` → indica que o programa terminou com **sucesso**.

O programa acima possui duas instruções: `printf("Olá, mundo!\n");` e `return: 0`. Toda instruçõa em C deve terminar com um **ponto e vírgula** , pois é uma parte crucial da sintaxe da linguagem.

**Importante:** Em todo o programa C deve existir apenas uma única função chamada `main()`.

---

### 🔵 Comentários de Programa
Comentários de programa podem ser colocados em qualquer lugar e são tratados pelo compilador como **espaços em branco**. Eles ajudam quem desenvolve o programa e qualquer pessoas que lê o programa fonte. São utilizados para documentar o código. Eles podem ser de:
- **uma linha**: onde usamos `//`
* **várias linhas**: onde usamos `/* */`

**Exemplo:**
```c
#include <stdio.h>

int main() {
    //printf("Olá, mundo!\n");
    return 0;
}
```
Neste exemplo, a instrunção `printf("Olá, mundo!\n");` não será mais executada.

**Exemplo:**
```c
#include <stdio.h>

int main() {
    /*printf("Olá, mundo!\n");
    return 0;*/
}
```
Neste exemplo, a instrunção `return: 0;` também não será mais executada.

---

### 🔵 Compilação e Execução com gcc
O **gcc** é o compilador de C mais utilizado em sistemas Unix/Linux, mas também pode ser instalado no Windows (via MinGW).

**Passos para compilar e executar:**
1. **Salvar o código:** Ex: hello.c

2. **Abrir o terminal** (cmd/powershell ou terminal do VSCode)

3. **Compilar com o comando:**
```bash
gcc hello.c -o hello
```
Isso gera um executável chamado hello.

4. **Executar:**
```bash
./hello
```

---

### 🔵 Apresentação da IDE: Visual Studio Code (VSCode)
Durante o curso, usaremos o **VSCode**, um editor leve, gratuito e com muitos recursos úteis para programadores.

**Principais recursos:**
- Suporte a C com extensões como C/C++ da Microsoft

- Destaque de sintaxe

- Terminal integrado

- Fácil integração com Git e GitHub

**Instalação:**
O link a seguir vai te direcionar a um vídeo ensinando como baixar e instalar tanto o VScode e o gcc. [Link do Vídeo](https://www.youtube.com/watch?v=ogciab1tEEo). Qualquer dúvida fale com o instrutor.

---