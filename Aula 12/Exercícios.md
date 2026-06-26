## 📝 Exercícios

---

### 🔹 Exercício 1 - Inverso de um Array

**Descrição:** Crie um programa que leia 5 números inteiros e armazene eles em um array. Ao final, exiba os elementos na ordem inversa da que foram informados.

**💡 Dica:**

- Para ler os valores do array, utilize um `for` começando em `0` e indo até `tamanho - 1`.
- Para exibir os valores na ordem inversa, utilize outro `for` começando em `tamanho - 1` e decrementando até `0`.

**Exemplo de:**

- Entrada:
  ```yaml
  Digite o valor 1: 1
  Digite o valor 2: 2
  Digite o valor 3: 3
  Digite o valor 4: -1
  Digite o valor 5: 4
  ```

* Saída:
  ```css
  Lista do valores (na ordem inversa): 4 -1 3 2 1
  ```

---

### 🔹 Exercício 2 - Buscar Número no Array

**Descrição:** Dado um array de 50 números inteiros já inicializado, leia um número e informe todas as **posições** em que esse número aparece no array.

Utilize o seguinte array:

```c
int numeros[50] = {
    5, 8, 12, 3, 8, 15, 7, 8, 20, 1,
    9, 14, 8, 6, 11, 18, 2, 8, 13, 4,
    10, 8, 16, 19, 8, 5, 7, 8, 12, 3,
    17, 8, 14, 6, 8, 20, 9, 1, 8, 15,
    11, 8, 2, 13, 8, 4, 10, 8, 16, 19
};
```

O programa deve percorrer o array e exibir todas as posições em que o número informado foi encontrado.

**💡 Dica:**

- Leia o número que será procurado.
- Utilize um for de `0` até `49` para percorrer todo o array.
- A cada posição, compare o valor armazenado com o número procurado.
- Se forem iguais, exiba a **posição** correspondente (`índice + 1`).

**🏆 Desafio Extra:**

- Faça o programa informar uma mensagem como **"Número não encontrado."** caso o valor procurado não exista no array.

**Exemplo de:**

- Entrada:
  ```yaml
  Digite o número a procurar: 8
  ```

* Saída:
  ```css
  Encontrado nas posições:
  2
  5
  8
  13
  18
  22
  25
  28
  32
  35
  39
  42
  45
  48
  ```

---

### 🔹 Exercício 3 - As Piores Notas

**Descrição:** Dado um array de 20 notas já inicializado, utilize o algoritmo **Bubble Sort** para ordenar as notas em ordem crescente e, em seguida, exiba as três menores notas da turma.

Utilize o seguinte array:

```c
float notas[20] = {
  7.5, 9.0, 4.5, 8.0, 6.5,
  10.0, 3.0, 5.5, 7.0, 2.5,
  8.5, 6.0, 9.5, 1.0, 4.0,
  7.8, 5.0, 3.5, 2.0, 6.8
};
```

**Exemplo de Saída:**

```yaml
As três menores notas são:
1.0
2.0
2.5
```

---

### 🔹 Exercício 4 - Ranking de Notas

**Descrição:** Dado um array de 20 notas já inicializado, utilize o Bubble Sort para ordenar as notas em ordem decrescente e exiba o pódio da turma.

Utilize o seguinte array:

```c
float notas[20] = {
  7.5, 9.0, 4.5, 8.0, 6.5,
  10.0, 3.0, 5.5, 7.0, 2.5,
  8.5, 6.0, 9.5, 1.0, 4.0,
  7.8, 5.0, 3.5, 2.0, 6.8
};
```

**Exemplo de Saída:**

```yaml
Ranking de Notas:
1º lugar: 10.0
2º lugar: 9.5
3º lugar: 9.0
```

---

### 🔹 Exercício 5 - Maior e Menor

**Descrição:** Dado um array de 10 valores inteiros já inicializado, percorra o array e determine qual é o menor e o maior valor armazenado.

Utilize o seguinte array:
```c
int numeros[10] = {15, 7, 22, 3, 10, 9, 25, 1, 13, 18};
```

**💡 Dica:**

- Inicialize as variáveis menor e maior com o primeiro elemento do array.
- Percorra o array utilizando um for.
- Compare cada elemento com menor e maior, atualizando-os quando necessário.

**Exemplo de Saída:**
```yaml
O menor valor é: 1
O maior valor é: 25
```

---