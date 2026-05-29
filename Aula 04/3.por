programa {
  funcao inicio() {
    // Exemplo: Avalie a situação de N alunos

    inteiro qtdAlunos

    escreva("Você quer avaliar a situação de quantos alunos ? ")
    leia(qtdAlunos)

    para (inteiro contador = 1; contador <= qtdAlunos; contador++) {
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
