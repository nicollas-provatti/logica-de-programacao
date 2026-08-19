programa
{
    funcao inicio()
    {
        // Operadores de Incremento e Decremento
        inteiro numero = 5

        // Incremento: adiciona 1 ao valor da variável
        escreva("Valor inicial de numero: ", numero, "\n")
        numero++ // Incremento 
        escreva("Após incremento (numero++): ", numero, "\n")

        // Decremento: subtrai 1 do valor da variável
        numero-- // Decremento 
        escreva("Após decremento (numero--): ", numero, "\n")

        // Pós-fixado
        escreva(numero++, "\n") // Saída: 5
        escreva(numero) // Saída: 6

        // Pré-fixado
        escreva(++numero, "\n") // Saída: 7
        escreva(numero) // Saída: 7
    }
}