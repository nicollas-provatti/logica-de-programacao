programa {
  // Tipos de Função
    // - Sem parâmetro e com retorno
  inclua biblioteca Util -->util
  funcao inicio() {
    inteiro numero = sortearNumero()
    escreva(numero)
  }

  funcao inteiro sortearNumero() {
    inteiro numeroSorteado = util.sorteia(1, 100)
    retorne numeroSorteado
  }
}
