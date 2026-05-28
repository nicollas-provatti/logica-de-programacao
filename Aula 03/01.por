programa {
  funcao inicio() {
    inteiro numero

    escreva("Digite um número: ")
    leia(numero)

    se (numero > 0) {
      escreva(numero, " é positivo!")
    } senao {
      escreva(numero, " é negativo!")
    }
  }
}