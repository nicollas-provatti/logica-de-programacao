programa {
  // Jogo da Adivinhação com Função

  // Melhoria: Implementar o placar final por nível de dificuldade

  inclua biblioteca Util -->util

  cadeia melhorJogadorFacil = ""
  inteiro melhorPontuacaoFacil = 11

  cadeia melhorJogadorMedio = ""
  inteiro melhorPontuacaoMedio = 1001

  cadeia melhorJogadorDificil = ""
  inteiro melhorPontuacaoDificil = 10001


  funcao inicio() {
    enquanto (verdadeiro) {
      mensagemDeBoasVindas()

      inteiro nivel = escolherDificuldade()

      inteiro intervalo = difinirIntervalo(nivel)

      inteiro numeroSorteado = sortearNumero(1, intervalo)
      inteiro numeroTentativas = 0
      cadeia nomeJogador

      escreva("\nQual o seu nome ? ")
      leia(nomeJogador)

      escreva("\nOlá, ", nomeJogador, "! Preparando o jogo")

      atraso()

      mensagemDeInicio(intervalo)

      enquanto (verdadeiro) {
        inteiro numeroDigitado

        escreva("Qual o seu palpite ? ")
        leia(numeroDigitado)

        se (numeroDigitado < 1 ou numeroDigitado > intervalo) {
          escreva("⚠️ Dê um palpite entre 1 e 100. Tente novamente!\n\n")
        } senao {
          numeroTentativas++

          se (numeroDigitado == numeroSorteado) {
            mensagemPersonalizada(numeroTentativas)

            atualizarMelhorJogador(nivel, nomeJogador, numeroTentativas)
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

    escreva("1 - Fácil (1 a 100)\n")
    escreva("2 - Médio (1 a 1000)\n")
    escreva("3 - Difícil (1 a 10000)\n\n")
    escreva("Escolha o nível de dificuldade: ")
    leia(nivel)

    retorne nivel
  }

  funcao inteiro difinirIntervalo(inteiro nivel) {
    inteiro intervalo
  
    escolha(nivel) {
      caso 1:
        intervalo = 100
        pare
      caso 2:
        intervalo = 1000
        pare
      caso 3:
        intervalo = 10000
        pare
      caso contrario:
        intervalo = 100
        escreva("\n⚠️ Opção Inválida. A dificuldade foi definida para 'fácil'.\n")
    }

    retorne intervalo
  }

  funcao inteiro sortearNumero(inteiro inicio, inteiro fim) {
    retorne util.sorteia(inicio, fim)
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

  funcao mensagemDeInicio(inteiro fim) {
    escreva("Um número de 1 a ", fim, " foi sorteado!\n")
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

  funcao atualizarMelhorJogador(inteiro nivel, cadeia jogador, inteiro tentativas) {
    se (nivel == 1) {
      se (tentativas < melhorPontuacaoFacil) {
        melhorPontuacaoFacil = tentativas
        melhorJogadorFacil = jogador
        escreva("\n🏆 Novo recorde no fácil! Você obteve a melhor pontuação até agora.\n")
      }
    } senao se (nivel == 2) {
      se (tentativas < melhorPontuacaoMedio) {
        melhorPontuacaoMedio = tentativas
        melhorJogadorMedio = jogador
        escreva("\n🏆 Novo recorde no médio! Você obteve a melhor pontuação até agora.\n")
      }
    } senao {
      se (tentativas < melhorPontuacaoDificil) {
        melhorPontuacaoDificil = tentativas
        melhorJogadorDificil = jogador
        escreva("\n🏆 Novo recorde no difícil! Você obteve a melhor pontuação até agora.\n")
      }
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
    escreva("\n====================== Placar Final ======================\n")

    se (melhorJogadorFacil != "") {
      escreva("Fácil: 🏅 O melhor jogador foi ", melhorJogadorFacil, " com ", melhorPontuacaoFacil, " tentativas.\n")
    }

    se (melhorJogadorMedio != "") {
      escreva("Médio: 🏅 O melhor jogador foi ", melhorJogadorMedio, " com ", melhorPontuacaoMedio, " tentativas.\n")
    }

    se (melhorJogadorDificil != "") {
      escreva("Difícil: 🏅 O melhor jogador foi ", melhorJogadorDificil, " com ", melhorPontuacaoDificil, " tentativas.\n")
    }

    escreva("==========================================================\n")
  }
}
