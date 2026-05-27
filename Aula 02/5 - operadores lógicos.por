programa
{
    funcao inicio()
    {
        logico a = verdadeiro
        logico b = falso

        // Operadores Lógicos

        // Operador "E" (conjunção): verdadeiro somente se ambos os valores forem verdadeiros
        logico E = a e b
        escreva("Operador E (a e b): ", E, "\n")  // Saída: falso

        // Operador "OU" (disjunção): verdadeiro se pelo menos um dos valores for verdadeiro
        logico OU = a ou b
        escreva("Operador OU (a ou b): ", OU, "\n")  // Saída: verdadeiro

        // Operador "NÃO" (negação): inverte o valor lógico
        logico NAO_A = nao a
        logico NAO_B = nao b
        escreva("Operador NÃO (nao a): ", NAO_A, "\n")  // Saída: falso
        escreva("Operador NÃO (nao b): ", NAO_B, "\n")  // Saída: verdadeiro

        // Exemplo Prático: Verificar acesso a um sistema
        inteiro idade = 20
        logico temPermissao = verdadeiro
        logico acessoLiberado = idade >= 18 e temPermissao

        escreva("\nExemplo Prático:\n")
        escreva("Idade: ", idade, "\n")
        escreva("Tem permissão? ", temPermissao, "\n")
        escreva("Acesso liberado? ", acessoLiberado, "\n")  // Saída: verdadeiro

        // Operador combinado: Usando "E", "OU" e "NÃO"
        logico resultadoCombinado = (a e nao b) ou (b e nao a)
        escreva("\nResultado Combinado ((a e nao b) ou (b e nao a)): ", resultadoCombinado, "\n")  // Saída: verdadeiro

        // Cenário: Verificar se uma pessoa pode votar
        inteiro idadeEleitor = 16
        logico tituloEleitor = falso
        logico podeVotar = idadeEleitor >= 16 e tituloEleitor

        escreva("\nCenário Prático:\n")
        escreva("Idade do eleitor: ", idadeEleitor, "\n")
        escreva("Possui título de eleitor? ", tituloEleitor, "\n")
        escreva("Pode votar? ", podeVotar, "\n")  // Saída: falso
    }
}