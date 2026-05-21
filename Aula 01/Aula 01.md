# 📘 Aula 1 - Introdução

### 🔵 Algoritmos e Lógica de Programação 

Para revisar e fixar o conteúdo visto em sala leia os artigos abaixo:

- [O que é algoritmo? Como funciona, tipos e exemplos](https://www.docusign.com/pt-br/blog/o-que-e-algoritmo)

- [O que são algoritmos e lógica de programação?](https://surl.li/brycfs)

### 🔵 Estrutura básica de um programa em Portugol
O **Portugol** é uma linguagem de programação fictícia (não real) usada para **ensinar lógica de programação** de forma simples e didática, em português.

Durante este curso, utilizaremos o **Portugol WebStudio**, uma plataforma online gratuita que simula um ambiente de desenvolvimento, permitindo escrever, testar e executar algoritmos em Portugol diretamente pelo navegador.

🔗 **Link para acesso:** https://portugol.dev/

Todo programa em Portugol segue uma estrutura básica, como no exemplo abaixo:

```portugol
programa
{
    funcao inicio()
    {
        escreva("Olá, mundo!")
    }
}
```

* `programa { ... }`: Delimita o **início e fim do código** do programa. Tudo deve estar dentro dessas chaves.

* `funcao inicio() { ... }`: É o **ponto de partida** da execução. Todo programa começa por essa função, que é semelhante à função `main()` em linguagens como C ou Java.

* `escreva("Olá, mundo!")`: Exibe uma mensagem na tela. Pode ser usado para mostrar textos, resultados de operações, entre outros.


#### 🔹 Regras básicas de sintaxe no Portugol WebStudio
- Toda função ou bloco de código deve estar **dentro de chaves** `{ }`.

- As instruções devem estar dentro da função `inicio()`.

- As palavras-chave como `programa`, `funcao`, `escreva`, `leia`, `se`, etc., devem ser **escritas corretamente**.

- **Aspas duplas** são usadas para exibir mensagens: "Olá, mundo!".

- A indentação (recuo) não é obrigatória para funcionar, mas é **muito importante para a legibilidade** do código.

---

### 🔵 Comentários de Programa
Comentários de programa podem ser colocados em qualquer lugar e são tratados pelo compilador como **espaços em branco**. Eles ajudam quem desenvolve o programa e qualquer pessoas que lê o programa fonte. São utilizados para documentar o código. Eles podem ser de:
- **uma linha**: onde usamos `//`
* **várias linhas**: onde usamos `/* */`

**Exemplos:**
```portugol
programa {
    funcao inicio() {
        //escreva("Olá, mundo!\n")
        escreva("Lógica de programação")
    }
}
```
Neste exemplo, a instrunção `escreva("Olá, mundo!\n")` não será mais executada.

```portugol
programa {
    funcao inicio() {
        /*escreva("Olá, mundo!\n")
        escreva("Lógica de programação")*/
    }
}
```
Neste exemplo, a instrunção `escreva("Lógica de programação")` também não será mais executada.

---

### 🔵 GitHub
O GitHub é uma plataforma de **hospedagem de código-fonte** que permite salvar, compartilhar e colaborar em projetos.

**1. Criar uma conta:**
- Acesse: https://github.com
- Clique em **Sign Up** e preencha os dados.

**2. Criar um repositório:**
- Após fazer login, clique em **New Repository**
- Dê o nome: Logica-de-programacao - OxeTech Lab
- Clique em **Create repository**

**3. Adicionar arquivos manualmente**
- Dentro do repositório, clique em **Add file** > **Upload files**
- Escolha o arquivo `.por` do seu computador
- Clique em **Commit changes**

**Estrutura do Repositório:**
```scss
📁 curso-logica-de-programa
├── 📁 Aula 01
│   └── (Exercícios da Aula 01)
├── 📁 Aula 02
│   └── (Exercícios da Aula 02)
├── 📁 Aula 03
│   └── (Exercícios da Aula 03)
├── 📁 Aula 04
│   └── (Exercícios da Aula 04)
├── 📁 Aula 05
│   └── (Exercícios da Aula 05)
├── 📁 Aula 06
│   └── (Exercícios da Aula 06)
├── 📁 Aula 07
│   └── (Exercícios da Aula 07)
├── 📁 Aula 08
│   └── (Exercícios da Aula 08)
├── 📁 Aula 09
│   └── (Exercícios da Aula 09)
├── 📁 Aula 10
│   └── (Exercícios da Aula 10)
├── 📁 Aula 11
│   └── (Exercícios da Aula 11)
├── 📁 Aula 12
│   └── (Exercícios da Aula 12)
├── 📁 Aula 13
│   └── (Exercícios da Aula 13)
├── 📁 Aula 14
│   └── (Exercícios da Aula 14)
├── 📁 Aula 15
│   └── (Exercícios da Aula 15)
├── 📁 Aula 16
│   └── (Exercícios da Aula 16)
├── 📁 Aula 17
│   └── (Exercícios da Aula 17)
├── 📁 Aula 18
│   └── (Exercícios da Aula 18)
├── 📁 Aula 19
│   └── (Exercícios da Aula 19)
├── 📁 Aula 20
│   └── (Exercícios da Aula 20)
├── 📁 Projeto Final
│   └── (Projeto final completo feito ao final do curso)
```

---