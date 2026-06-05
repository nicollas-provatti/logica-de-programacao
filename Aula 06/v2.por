programa {
  inclua biblioteca Util -->util
  funcao inicio() {
    // Jogo da Adivinhação

    // Melhoria: Exibir uma mensagem personalizada com base no número de tentavias.
      // Até 3 tentativas: "Uau! Você é um gêneio da adivinhação!"
      // Entre 4 e 6: "Muite bem! Você foi rápido!"
      // Mais de 6: "Conseguiu! Persitência é tudo!"

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
        se (numeroTentativas <= 3) {
          escreva("✅ Uau! Você é um gêneio da adivinhação! Número de Tentativas: ", numeroTentativas, ".\n")
        } senao se (numeroTentativas <= 6) {
          escreva("✅ Muite bem! Você foi rápido! Número de Tentativas: ", numeroTentativas, ".\n") 
        } senao {
          escreva("✅ Conseguiu! Persitência é tudo! Número de Tentativas: ", numeroTentativas, ".\n") 
        }
        pare
      }

      se (numeroSorteado > numeroDigitado) {
        escreva("❌ O número sorteado é MAIOR que ", numeroDigitado, ".\n\n")
      } senao {
        escreva("❌ O número sorteado é MENOR que ", numeroDigitado, ".\n\n")
      }
    }
  }
}
