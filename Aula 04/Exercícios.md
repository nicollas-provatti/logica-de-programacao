## 📝 Exercícios 

---

### 🔹 Exercício 1 - Classificação para CNH
**Descrição:** Crie um programa que permita verificar se várias pessoas podem tirar a Carteira Nacional de Habilitação (CNH).

Inicialmente, o programa deve perguntar quantas pessoas serão analisadas. Em seguida, para cada pessoa, solicite:

- Nome
- Idade

Considere que uma pessoa pode tirar CNH apenas se tiver **18 anos ou mais**.

Ao final de cada análise, exiba uma mensagem informando se a pessoa pode ou não tirar a CNH.

**Exemplo de:**
- Entrada:
    ```yaml
    Quantas pessoas deseja analisar? 3

    Digite o nome da 1ª pessoa: Lucas
    Digite a idade de Lucas: 17

    Digite o nome da 2ª pessoa: Maria
    Digite a idade de Maria: 22

    Digite o nome da 3ª pessoa: João
    Digite a idade de João: 18
    ```
 
* Saída:
    ```css
    Lucas nao pode tirar CNH.

    Maria pode tirar CNH.

    Joao pode tirar CNH.
    ```

<br>

**Lógica de decisão**
```portugol
se (idade >= 18) {
    escreva(nome, " pode tirar CNH.\n\n")
} 
senao {
    escreva(nome, " nao pode tirar CNH.\n\n")
}
```
---

### 🔹 Exercício 2 - Total de Vendas da Loja
**Descrição:** Uma loja deseja calcular o valor total arrecadado com as compras realizadas durante o dia.

Faça um programa que pergunte **quantos clientes foram atendidos**. Em seguida, para cada cliente, solicite **o valor da sua compra** e **acumule esses valores**.

Ao final, exiba o valor total arrecadado pela loja.

**Exemplo de:**
- Entrada:
    ```yaml
    Quantos clientes foram atendidos? 3

    Digite o valor da compra do 1° cliente: 150.50
    Digite o valor da compra do 2° cliente: 89.90
    Digite o valor da compra do 3° cliente: 210.00
    ```
 
* Saída:
    ```css
    O total arrecadado pela loja foi: R$ 450.40
    ```

**Dica:** Utilize uma variável acumuladora iniciada com zero para armazenar a soma dos valores das compras conforme elas forem sendo informadas.

---

### 🔹 Exercício 3 - Maior e Menor Número da Lista

**Descrição:** Faça um programa que pergunte quantos números serão digitados. Em seguida, leia todos os números informados pelo usuário e determine:

- O maior número digitado.
- O menor número digitado.

**⚠️ Atenção:** a sua solução deve funcionar corretamente para números positivos, negativos e zero.

Ao final, exiba o maior e o menor valor encontrados.

**Exemplo de:**
- Entrada:
    ```yaml
    Quantos numeros voce vai digitar? 5

    Digite o 1° numero: 10
    Digite o 2° numero: -5
    Digite o 3° numero: 8
    Digite o 4° numero: 20
    Digite o 5° numero: 3
    ```
 
* Saída:
    ```css
    O maior numero digitado foi 20
    O menor numero digitado foi -5
    ```
<br>

No exemplo apresentado em aula, a variável `maiorNumero` foi inicializada com **0**, o que não funciona corretamente quando todos os números digitados são negativos. Pense em uma estratégia que permita encontrar corretamente o maior e o menor valor independentemente dos números informados pelo usuário.

---

