programa {
  funcao inicio() {
    // classificaAluno com retorno
    real media

    escreva("Informe a media: ")
    leia(media)

    cadeia classificacao = classificaAluno(media)
    escreva(classificacao)
  }

  funcao cadeia classificaAluno(real media) {
    se (media >= 6) {
      retorne "Aprovado!"
    } senao {
      retorne "Reprovado!"
    }
  }
}
