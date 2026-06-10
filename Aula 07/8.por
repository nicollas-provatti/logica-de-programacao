programa {
  // Sistema de Notas (com função)
  funcao inicio() {
    cadeia nome
    real nota1, nota2, media

    escreva("Digite o nome do aluno: ")
    leia(nome)

    escreva("Digite a primeira nota: ")
    leia(nota1)

    escreva("Digite a segunda nota: ")
    leia(nota2)

    media = calcularMedia(nota1, nota2)

    exibirDadosAluno(nome, nota1, nota2, media)
  }

  funcao real calcularMedia(real n1, real n2) {
    retorne (n1 + n2) / 2
  }

  funcao exibirDadosAluno(cadeia nome, real n1, real n2, real media) {
    escreva("\n--- Dados do Aluno ---\n")
    escreva("Aluno: ", nome, "\n")
    escreva("AB1: ", n1, "\n")
    escreva("AB2: ", n2, "\n")
    escreva("Média: ", media, "\n")
    escreva("Situação: ")

    classificaAluno(media)
  }

  funcao classificaAluno(real media) {
    se (media >= 6) {
      escreva("Aprovado\n")
    } senao {
      escreva("Reprovado\n")
    }
  }
}
