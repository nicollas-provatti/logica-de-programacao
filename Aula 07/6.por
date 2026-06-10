programa {
  // Tipos de Função
    // - Com parâmetro e com retorno
  inclua biblioteca Util -->util
  funcao inicio() {
    inteiro numero = sortearNumero(1, 10)
    escreva(numero)
  }

  funcao inteiro sortearNumero(inteiro inicio, inteiro fim) {
    inteiro numeroSorteado = util.sorteia(inicio, fim)
    retorne numeroSorteado
  }
}
