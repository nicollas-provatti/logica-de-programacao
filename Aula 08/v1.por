programa {
  // Jogo da Adivinhação com Função
  inclua biblioteca Util -->util

  cadeia melhorJogador = ""
  inteiro melhorPontuacao = 999

  funcao inicio() {
    enquanto (verdadeiro) {
      mensagemDeBoasVindas()

      inteiro numeroSorteado = sortearNumero()
      inteiro numeroTentativas = 0
      cadeia nomeJogador

      escreva("Qual o seu nome ? ")
      leia(nomeJogador)

      escreva("\nOlá, ", nomeJogador, "! Preparando o jogo")

      atraso()

      mensagemDeInicio()

      enquanto (verdadeiro) {
        inteiro numeroDigitado

        escreva("Qual o seu palpite ? ")
        leia(numeroDigitado)

        se (numeroDigitado < 1 ou numeroDigitado > 100) {
          escreva("⚠️ Dê um palpite entre 1 e 100. Tente novamente!\n\n")
        } senao {
          numeroTentativas++

          se (numeroDigitado == numeroSorteado) {
            mensagemPersonalizada(numeroTentativas)

            atualizarMelhorJogador(nomeJogador, numeroTentativas)
            pare
          }

          exibirDica(numeroDigitado, numeroSorteado)
        }
      }

      cadeia novoJogo = iniciarNovoJogo()

      se (novoJogo == "nao" ou novoJogo == "NAO" ou novoJogo == "n" ou novoJogo == "N") {
        escreva("\n🏅 O melhor jogador foi ", melhorJogador, " com ", melhorPontuacao, " tentativas.\n")
        pare
      }
    }
  }
  
  funcao mensagemDeBoasVindas() {
    escreva("---------------------------------\n")
    escreva("Bem-vindo ao Jogo da Adivinhação!\n")
    escreva("---------------------------------\n\n")
  }

  funcao inteiro sortearNumero() {
    retorne util.sorteia(1, 100)
  }

  funcao atraso() {
    util.aguarde(1000)
    escreva(".")
    util.aguarde(1000)
    escreva(".")
    util.aguarde(1000)
    escreva(".\n\n")
    util.aguarde(1000)
  }

  funcao mensagemDeInicio() {
    escreva("Um número de 1 a 100 foi sorteado!\n")
    escreva("Tente adivinhar qual é! Boa sorte!\n\n")
  }

  funcao mensagemPersonalizada(inteiro tentativas) {
    se (tentativas <= 3) {
      escreva("✅ Uau! Você é um gêneio da adivinhação! Número de Tentativas: ", tentativas, ".\n")
    } senao se (tentativas <= 6) {
      escreva("✅ Muite bem! Você foi rápido! Número de Tentativas: ", tentativas, ".\n") 
    } senao {
      escreva("✅ Conseguiu! Persitência é tudo! Número de Tentativas: ", tentativas, ".\n") 
    }
  }

  funcao atualizarMelhorJogador(cadeia jogador, inteiro tentativas) {
    se (tentativas < melhorPontuacao) {
      melhorPontuacao = tentativas
      melhorJogador = jogador
      escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n")
    }
    // Adicionar variáveis globais
  }

  funcao exibirDica(inteiro palpite, inteiro numeroSorteado) {
    se (numeroSorteado > palpite) {
      escreva("❌ O número sorteado é MAIOR que ", palpite, ".\n\n")
    } senao {
      escreva("❌ O número sorteado é MENOR que ", palpite, ".\n\n")
    }
  }

  funcao cadeia iniciarNovoJogo() {
    cadeia novoJogo 
    escreva("\nDeseja iniciar um novo jogo (sim/nao) ? ")
    leia(novoJogo)
    limpa()

    retorne novoJogo
  }
}
