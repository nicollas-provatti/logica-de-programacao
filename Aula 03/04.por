programa {
  funcao inicio() {
    // Filtros: todos, romance, ação, ficção

    inteiro filtro = 5

    escreva("----- ESCOLHA UM FILTRO -----\n")
    escreva("1 - Todos\n")
    escreva("2 - romance\n")
    escreva("3 - Ação\n")
    escreva("4 - Ficção\n")


    escolha(filtro) {
      caso "todos": 
        escreva("Listando todos os livros...\n")
        pare
      caso 2:
        escreva("Listando os livros de romance...\n")
        pare
      caso 3:
        escreva("Listando os livros de ação...\n")
        pare
      caso 4:
        escreva("Listando os livros ficção...\n")
        pare
      caso contrario:
        escreva("Filtro Inválido")
    }
  }
}
