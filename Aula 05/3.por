programa {
  funcao inicio() {
    // Exemplo: Leia uma lista de números 
    // até que o número digitado seja -1

    enquanto (verdadeiro) {
      inteiro numero

      escreva("Digite um número: ")
      leia(numero)

      se (numero == -1) {
        escreva("Quebra do laço!")
        pare
      }
    }
  }
}
