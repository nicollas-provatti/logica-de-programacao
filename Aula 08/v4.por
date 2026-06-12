programa {
  // Jogo da Adivinhação com Função

  // Melhoria: Implementar nível de dificuldade 
  // com base no número de tentativas
  inclua biblioteca Util -->util

  cadeia melhorJogador = ""
  inteiro melhorPontuacao = 999

  funcao inicio() {
    enquanto (verdadeiro) {
      mensagemDeBoasVindas()

      inteiro nivel = escolherDificuldade()

      inteiro limiteTentativas = difinirLimiteTentativas(nivel)

      inteiro numeroSorteado = sortearNumero()
      inteiro numeroTentativas = 0
      cadeia nomeJogador

      escreva("\nQual o seu nome ? ")
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

          se (numeroTentativas > limiteTentativas) {
            escreva("\n😵 Fim de Jogo. Você atingiu o limite de tentativas!\n")
            pare
          }

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
        exibirPlacarFinal()
        pare
      }
    }
  }

  funcao mensagemDeBoasVindas() {
    escreva("---------------------------------\n")
    escreva("Bem-vindo ao Jogo da Adivinhação!\n")
    escreva("---------------------------------\n\n")
  }

  funcao inteiro escolherDificuldade() {
    inteiro nivel

    escreva("1 - Fácil (até 10 palpites) \n")
    escreva("2 - Médio (até 7 palpites)\n")
    escreva("3 - Difícil (até 5 palpites)\n\n")
    escreva("Escolha o nível de dificuldade: ")
    leia(nivel)

    retorne nivel
  }

  funcao inteiro difinirLimiteTentativas(inteiro nivel) {
    inteiro limite
  
    escolha(nivel) {
      caso 1:
        limite = 10
        pare
      caso 2:
        limite = 7
        pare
      caso 3:
        limite = 5
        pare
      caso contrario:
        limite = 10
        escreva("\n⚠️ Opção Inválida. A dificuldade foi definida para 'fácil'.\n")
    }

    retorne limite
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

  funcao exibirPlacarFinal() {
    se (melhorJogador != "") {
      escreva("\n====================== Placar Final ======================\n")
      escreva("🏅 O melhor jogador foi ", melhorJogador, " com ", melhorPontuacao, " tentativas.\n")  
      escreva("==========================================================\n")
    } senao {
      escreva("Nenhum jogador consegui completar o jogo.\n")
    }
  }
}
