programa {
  funcao inicio() {
    real media

    escreva("Informe a media: ")
    leia(media)

    classificaAluno(media)
  }

  funcao classificaAluno(real media) {
    se (media >= 6) {
      escreva("Aprovado!\n")
    } senao {
      escreva("Reprovado!\n")
    }
  }
}
