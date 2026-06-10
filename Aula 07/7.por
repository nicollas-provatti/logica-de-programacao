programa {
  // Sistema de Notas (sem função)
  funcao inicio() {
    cadeia nome
    real nota1, nota2, media

    escreva("Digite o nome do aluno: ")
    leia(nome)
    escreva("Digite a nota 1: ")
    leia(nota1)
    escreva("Digite a nota 2: ")
    leia(nota2)

    media = (nota1 + nota2) / 2

    escreva("\n--- Resultado ---\n")
    escreva("Aluno: ", nome, "\n")
    escreva("Nota 1: ", nota1, "\n")
    escreva("Nota 2: ", nota2, "\n")
    escreva("Média: ", media, "\n")

    se (media >= 7) {
      escreva("Situação: Aprovado\n")
    } senao {
      escreva("Situação: Reprovado\n")
    }
  }
}
