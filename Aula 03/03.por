programa {
  funcao inicio() {
    
    // Se a nota for maior ou igual a 7 e menor ou igual a 10 -> "Aprovado"
    // Se a nota for maior ou igual a 4 e menor ou igual a 6 -> "Recuperação"
    // Se a nota for maior ou igual a 0 e menor ou igual a 3 -> "Reprovado"

    real nota

    escreva("Informe a nota: ")
    leia(nota)

    se (nota >= 7 e nota <= 10) {
      escreva("Aprovado")
    }
    senao se (nota >= 4 e nota <= 6) {
      escreva("Recuperação")
    }
    senao se (nota >= 0 e nota <= 3) {
      escreva("Reprovado")
    }
    senao {
      escreva("Nota Inválida!")
    }
  }
}
