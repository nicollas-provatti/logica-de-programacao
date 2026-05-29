programa {
  funcao inicio() {
    // Exemplo: Avalie a situação de 3 alunos

    para (inteiro contador = 1; contador <= 3; contador++) {
      real media

      escreva("Digite a média do ", contador, "° aluno: ")
      leia(media)

      se (media >= 6) {
        escreva("Aprovado\n")
      } senao {
        escreva("Reprovado\n")
      }
    }

  }
}
