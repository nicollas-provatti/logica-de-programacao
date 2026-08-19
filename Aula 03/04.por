programa {
	funcao inicio() {
		real nota

    escreva("Digite sua nota: ")
    leia(nota)
    
    // [7, 10] -> Aprovado!
    // [4, 6]  -> Recuperação!
    // [0, 3]  -> Reprovado!
    // Senao   -> Nota Inválida

    se (nota >= 7 e nota <= 10) {
      escreva("Aprovado!")
    } senao se (nota >= 4 e nota <= 6) {
      escreva("Recuperação!")
    } senao se (nota >= 0 e nota <= 3) {
      escreva("Reprovado!")
    } senao {
      escreva("Nota Inválida!")
    }
	}
}