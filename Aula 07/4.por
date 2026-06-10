programa {
  // Tipos de Função
    // - Com parâmetro e sem retorno
  funcao inicio() {
    exibirMensagemPersonalizada(7)
  }

  funcao exibirMensagemPersonalizada(inteiro tentativas) {
    se (tentativas <= 3) {
      escreva("Você é um gênio!\n")
    } senao se (tentativas <= 6) {
      escreva("Você foi rápido!\n")
    } senao {
      escreva("Persistência é tudo!\n")
    }
  }
}
