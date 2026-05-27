programa {
  funcao inicio() {
    inteiro numero

    escreva("Digite um número: ")
    leia(numero)

    se (numero == 0) {
      escreva("O número é zero!")
    }
    senao se (numero > 0) {
      escreva(numero, " é postivo!")
    }
    senao {
      escreva(numero, " é negativo!")
    }
  }
}
