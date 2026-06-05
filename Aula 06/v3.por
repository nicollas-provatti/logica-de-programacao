programa {
  inclua biblioteca Util -->util
  funcao inicio() {
    // Jogo da Adivinhação

    // Melhorias: 
      // - Permitir vários jogos até que não tenha mais jogadores.
      // - Para cada jogo solicitar o nome do jogador
      // - Ao final, informar o jogador com a melhor pontuação

    cadeia melhorJogador = ""
    inteiro melhorPontuacao = 999

    enquanto (verdadeiro) {
      escreva("---------------------------------\n")
      escreva("Bem-vindo ao Jogo da Adivinhação!\n")
      escreva("---------------------------------\n\n")

      inteiro numeroSorteado = util.sorteia(1, 100)
      inteiro numeroTentativas = 0
      cadeia nomeJogador

      escreva("Qual o seu nome ? ")
      leia(nomeJogador)

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

          se (numeroTentativas < melhorPontuacao) {
            melhorPontuacao = numeroTentativas
            melhorJogador = nomeJogador
            escreva("\n 🏆Novo recorde! Você obteve a melhor pontuação até agora.\n")
          }
          pare
        }

        se (numeroSorteado > numeroDigitado) {
          escreva("❌ O número sorteado é MAIOR que ", numeroDigitado, ".\n\n")
        } senao {
          escreva("❌ O número sorteado é MENOR que ", numeroDigitado, ".\n\n")
        }
      }

      cadeia novoJogo

      escreva("\nDeseja iniciar um novo jogo (sim/nao) ? ")
      leia(novoJogo)

      se (novoJogo == "nao" ou novoJogo == "NAO" ou novoJogo == "n" ou novoJogo == "N") {
        escreva("\n🏅 O melhor jogador foi ", melhorJogador, " com ", melhorPontuacao, " tentativas.\n")
        pare
      }
    }
  }
}
