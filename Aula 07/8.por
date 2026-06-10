programa {
  // Sistema de Notas (com função)
  funcao inicio() {
    cadeia nome
    real nota1, nota2, media

    escreva("Digite o nome do aluno: ")
    leia(nome)
    escreva("Digite a nota 1: ")
    leia(nota1)
    escreva("Digite a nota 2: ")
    leia(nota2)

    media = calcularMedia(nota1, nota2)
    exibirResultado(nome, nota1, nota2, media)
  }

  funcao real calcularMedia(real n1, real n2) {
    retorne (n1 + n2) / 2
  }

  // Função para exibir o resultado do aluno
  funcao exibirResultado(cadeia nome, real n1, real n2, real media) {
    escreva("\n--- Resultado ---\n")
    escreva("Aluno: ", nome, "\n")
    escreva("Nota 1: ", n1, "\n")
    escreva("Nota 2: ", n2, "\n")
    escreva("Média: ", media, "\n")

    se (media >= 7) {
      escreva("Situação: Aprovado\n")
    } senao {
      escreva("Situação: Reprovado\n")
    }
  }
}
