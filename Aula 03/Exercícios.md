## 📝 Exercícios 

---

### 🔹 Exercício 1 - Habilitação
**Descrição:** Crie um programa que leia o **ano de nascimento** do usuário e o **ano atual**. Com base nesses dados, calcule a **idade** e exiba uma mensagem informando:

- Quantos anos o usuário completa no ano atual
- E se ele **pode ou não tirar a habilitação**, considerando que a idade mínima é 18 anos.


**Exemplo de:**
- Entrada:
  ```css
  Digite o ano de nascimento: 2006
  Digite o ano atual: 2025
  ```
 
* Saída:
  ```css
  Você completa 19 anos em 2025 e poderá tirar a habilitação.
  ```

**Outro exemplo:**
- Entrada:
  ```css
  Digite o ano de nascimento: 2010
  Digite o ano atual: 2025
    ```
 
* Saída:
  ```css
  Você completa 15 anos em 2025 e ainda não poderá tirar a habilitação.
  ```
---

### 🔹 Exercício 2 - Faixa Etária
**Descrição:** Crie um programa em Portugol que solicite ao usuário sua **idade** e, com base na idade fornecida, imprima uma mensagem indicando a faixa etária correspondente:

- Idade **maior ou igual** a 65: `Você é um idoso.`
- Idade **maior ou igual** a 18: `Você é um adulto.`
- Idade **maior ou igual** a 13: `Você é um adolescente.`
- **Senão** a saída deve ser: `Você é uma criança.`

**Exemplo de:**
- Entrada:
  ```css
  Qual a sua idade ? 30
  ```
 
* Saída:
  ```css
  Você é um adulto. 
  ```

---

### 🔹 Exercício 3 - Calculadora Simples 1
**Descrição:** Escreva um programa que simule uma calculadora simples. O programa deve ler **dois números inteiros** e o **tipo de operação** a ser realizada (soma, subtração, multiplicação ou divisão). A operação será escolhida pelo usuário, utilizando um número que representará cada operação:

- **1** para soma
- **2** para subtração
- **3** para multiplicação
- **4** para divisão

Use o comando `escolha` para escolher a operação e, ao final, exiba o resultado da operação escolhida.

**Exemplo de:**
- Entrada:
  ```css
  Digite o primeiro número: 10
  Digite o segundo número: 5

  --- Operações ---
  1 - soma 
  2 - subtração 
  3 - multiplicação
  4 - divisão
  -----------------

  Escolha uma operação: 1
  ```
 
* Saída:
  ```css
  Resultado da soma: 15
  ```

---

### 🔹 Exercício 4 - Classificação de IMC
**Descrição:** Crie um programa que solicite ao usuário o seu **peso** (em kg) e sua **altura** (em metros). Em seguida, o programa deve calcular o IMC do usuário utilizando a fórmula:

\[
\text{IMC} = \frac{\text{peso (kg)}}{(\text{altura (m)})^2}
\]

Após o cálculo, exiba o **valor do IMC** e, de acordo com o valor obtido, informe a **classificação** do IMC:

- **Abaixo de 18.5**: `Abaixo do peso`
- **Entre 18.5 e 24.9**: `Peso normal`
- **Entre 25 e 29.9**: `Sobrepeso`
- **Entre 30 e 34.9**: `Obesidade grau 1`
- **Entre 35 e 39.9**: `Obesidade grau 2`
- **Acima de 40**: `Obesidade grau 3`

**Exemplo de:**
- Entrada:
  ```css
  Peso (kg): 70
  Altura (m): 1.75
  ```
 
* Saída:
  ```css
  Seu IMC é: 22.86
  Você tem peso normal.
  ```

---

### 🔹 Exercício 5 - Classe Eleitoral
**Descrição:** Faça um programa que pergunte o **nome** e a **idade** de uma pessoa e informe sua classe eleitoral de acordo com as seguintes regras:

- Menor de 16 anos → **nao eleitor**
- Entre 16 e 18 anos (18 não incluso) → **eleitor facultativo**
- Entre 18 e 65 anos (inclusive) → **eleitor obrigatorio**
- Acima de 65 anos → **eleitor facultativo**

O programa deve ler uma cadeia de caracteres (nome) e um número inteiro (idade), exibindo ao final a classificação eleitoral da pessoa.

**Exemplo de:**
- Entrada:
  ```css
  Olá, qual o seu nome ? Lucas
  Lucas, qual a sua idade ? 17
  ```
 
* Saída:
  ```css
  Lucas, sua classificação eleitoral é: Eleitor Facultativo.
  ```
    
---

### 🔹 Exercício 6 - Triagem Médica
**Descrição:** Faça um programa que realize uma triagem médica simples. O programa deve perguntar ao paciente sua **temperatura corporal** e se ele está apresentando os seguintes sintomas: **secreção, tosse e dor no corpo**.

Para simplificar, a resposta para os sintomas deve ser apenas:

- **S** → Sim
- **N** → Não

De acordo com as informações fornecidas, o programa deve exibir uma das seguintes mensagens:

- **Exames Especiais** → temperatura maior ou igual a 37°C e resposta igual a S.
- **Exames Basicos** → temperatura maior ou igual a 37°C e resposta igual a N.
- **Exames Basicos** → temperatura menor que 37°C e resposta igual a S.
- **Liberado** → temperatura menor que 37°C e resposta igual a N.
- **Erro** → caso a resposta informada para os sintomas seja diferente de S ou N.

**Exemplo de:**
- Entrada:
  ```css
  Qual a sua temperatura? 38.2
  Voce esta com secrecao, tosse e dor no corpo? (S/N) S
  ```
 
* Saída:
  ```css
  Exames Especiais
  ```

---