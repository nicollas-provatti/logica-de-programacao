programa {
  inclua biblioteca Util -->util
  funcao inicio() {
    // Jogo da Adivinhação

    // - Sortear um número entre 1 e 100
    // - Permitir que o usuário dê palpites até acertar
    // - Para cada palpite exibir uma dica 
    // - Exibir o número de palpites ao final

    escreva("---------------------------------\n")
    escreva("Bem-vindo ao Jogo da Adivinhação!\n")
    escreva("---------------------------------\n\n")

    inteiro numeroSorteado = util.sorteia(1, 100)
    inteiro numeroTentativas = 0

    escreva("Um número de 1 a 100 foi sorteado!\n")
    escreva("Tente adivinhar qual é! Boa sorte!\n\n")

    enquanto (verdadeiro) {
      inteiro numeroDigitado

      escreva("Qual o seu palpite ? ")
      leia(numeroDigitado)

      numeroTentativas++

      se (numeroDigitado == numeroSorteado) {
        escreva("✅ Parabéns! Você acertou em ", numeroTentativas, " tentativas!\n")
        pare
      }

      se (numeroSorteado > numeroDigitado) {
        escreva("❌ O número sorteado é MAIOR que ", numeroDigitado, "\n\n")
      } senao {
        escreva("❌ O número sorteado é MENOR que ", numeroDigitado, "\n\n")
      }
    }
  }
}
