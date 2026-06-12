programa {
  // Jogo da Adivinhação com Função

  // Melhoria: Implementar nível de dificuldade com base no intervalo de número
  inclua biblioteca Util -->util

  cadeia melhorJogador = ""
  inteiro melhorPontuacao = 999

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

  // Melhoria: 
  // - Implementar nível de dificuldade com base no intervalo de número
  // OBS.: Fazer primeiro sem usar função

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
}
