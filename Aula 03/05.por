programa {
  funcao inicio() {
    // Filtros: todos, romance, ação, ficção
    
    // 1 - Todos
    // 2 - Romance
    // 3 - Ação
    // 4 - Ficção

    inteiro filtro

    escreva("----- FILTROS -----\n")
    escreva("1 - Todos\n")
    escreva("2 - Romance\n")
    escreva("3 - Ação\n")
    escreva("4 - Ficção\n")
    escreva("-------------------\n")

    escreva("Escolha um filtro: ")
    leia(filtro)

    escolha(filtro) {
      caso 1:
        escreva("Listando todos os livros...")
        pare
      caso 2:
        escreva("Listando os livros de romance...")
        pare
      caso 3:
        escreva("Listando os livros de ação...")
        pare
      caso 4:
        escreva("Listando os livros de ficção...")
        pare
      caso contrario:
        escreva("Filtro Inválido!")
    }
  }
}