programa {
  funcao inicio() {
    // Exemplo: Leia N números inteiros e imprima o maior

    // Se o número digitado for o primeiro: maiorNumero = numero

    inteiro qtdNumeros, maiorNumero, menorNumero

    escreva("Quantos números você vai digitar ? ")
    leia(qtdNumeros)

    para (inteiro contador = 1; contador <= qtdNumeros; contador++) {
      inteiro numero

      escreva("Digite o ", contador, "° número: ")
      leia(numero)

      se (contador == 1) {
        maiorNumero = numero
        menorNumero = numero
      }

      se (numero > maiorNumero) {
        maiorNumero = numero
      }

      se (numero < menorNumero) {
        menorNumero = numero
      }
    }

    escreva("O maior número digitado foi ", maiorNumero)
    escreva("O menor número digitado foi ", menorNumero)
  }
}
