## 📝 Exercícios 

---

### 🔹 Exercício 1 - Positivos e Negativos
**Descrição:** Crie um programa que leia números inteiros da entrada até que o número digitado seja **0**. Para cada número, o programa deve verificar se ele é **positivo** ou **negativo**. Ao final, o programa deve informar a quantidade de números positivos e a quantidade de números negativos digitados.

**Exemplo de:**
- Entrada:
    ```css
    3
    -2
    5
    -1
    0
    ```
 
* Saída:
    ```yaml
    Quantidade de números positivos: 2
    Quantidade de números negativos: 2
    ```

---


### 🔹 Exercício 2 - pH de Substâncias
**Descrição:** Crie um programa em Portugol que leia os valores de pH de **N substâncias**. A entrada termina quando o usuário digitar **-1**. Para cada valor informado, o programa deve classificar a substância como ácida, básica ou neutra, de acordo com seu pH:

- Se o pH for **menor que 7**: `Substância Ácida`
- Se o pH for **maior que 7**: `Substância Básica`
- Se o pH for **igual a 7**: `Substância Neutra`

**Exemplo de:**
- Entrada:
    ```css
    6.5
    7
    9.2
    4.3
    -1
    ```
 
* Saída:
    ```yaml
    Substância Ácida
    Substância Neutra
    Substância Básica
    Substância Ácida
    ```

---

### 🔹 Exercício 3 - Controle de Anúncios da Agência

**Descrição:** A agência de publicidade Criativa produz anúncios para diferentes tipos de mídia. O valor cobrado depende da mídia escolhida pelo cliente:

| Mídia   | Condição         | Valor       |
| ------- | ---------------- | ----------- |
| Rádio   | FM               | R$ 500,00   |
| Rádio   | AM               | R$ 300,00   |
| TV      | Horário até 20h  | R$ 1.200,00 |
| TV      | Horário após 20h | R$ 2.000,00 |
| Revista | -                | R$ 750,00   |
| Outdoor | -                | R$ 1.500,00 |

Crie um programa que permita cadastrar vários anúncios.

Para cada cliente, o programa deve solicitar o tipo de mídia desejado. Dependendo da mídia escolhida, informações adicionais poderão ser necessárias:

- Para **Rádio**, perguntar se o anúncio será em **AM** ou **FM**.
- Para **TV**, perguntar o horário de exibição.
- Para **Revista** e **Outdoor**, nenhuma informação adicional será necessária.

Ao final, o programa deve exibir:

- O valor total que a agência irá receber.
- A quantidade de anúncios para Rádio.
- A quantidade de anúncios para TV.
- A quantidade de anúncios para Revista.
- A quantidade de anúncios para Outdoor.

**Escolha uma das abordagens abaixo:**
- *Opção 1 - Quantidade de clientes:* Pergunte inicialmente quantos clientes serão atendidos e utilize um laço para realizar os cadastros.

* *Opção 2 - Condição de parada:* Permita que o usuário cadastre anúncios até decidir encerrar o programa. Após cada cadastro, pergunte se deseja registrar outro anúncio, por exemplo.

**Exemplo de:**
**Opção 1 - Quantidade de clientes**
- Entrada :
    ```css
    Quantos clientes deseja cadastrar? 3

    Cliente 1
    Tipo de midia (radio/tv/revista/outdoor): radio
    Faixa (AM/FM): FM

    Cliente 2
    Tipo de midia (radio/tv/revista/outdoor): tv
    Horario: 21

    Cliente 3
    Tipo de midia (radio/tv/revista/outdoor): revista
    ```
 
* Saída:
    ```yaml
    Valor total arrecadado: R$ 3250.00

    Anuncios de Radio: 1
    Anuncios de TV: 1
    Anuncios de Revista: 1
    Anuncios de Outdoor: 0
    ```

**Opção 2 - Condição de Parada**

- Entrada:
    ```css
   Tipo de midia (radio/tv/revista/outdoor): radio
    Faixa (AM/FM): AM

    Deseja cadastrar outro anuncio? (S/N): S

    Tipo de midia (radio/tv/revista/outdoor): tv
    Horario: 22

    Deseja cadastrar outro anuncio? (S/N): S

    Tipo de midia (radio/tv/revista/outdoor): outdoor

    Deseja cadastrar outro anuncio? (S/N): N
    ```
 
* Saída:
    ```yaml
    Valor total arrecadado: R$ 3800.00

    Anuncios de Radio: 1
    Anuncios de TV: 1
    Anuncios de Revista: 0
    Anuncios de Outdoor: 1
    ```

**Dicas:**
- Utilize um **acumulador** para armazenar o valor total arrecadado.
- Utilize **contadores** para registrar quantos anúncios de cada mídia foram cadastrados.
- Utilize estruturas de decisão para determinar o valor de cada anúncio.
- Tente organizar sua solução em etapas antes de começar a programar. - Isso ajudará bastante em um problema com várias condições.