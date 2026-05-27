programa
{
	inclua biblioteca Matematica-->mat
	funcao inicio()
	{
		real numero = 4.543456464
		numero = mat.arredondar(numero, 2)
		
		real numeroArredondado = mat.arredondar(numero, 2)
		escreva(numero, "\n")
		escreva(numeroArredondado, "\n")
		escreva(mat.arredondar(numero, 2), "\n")
	}
}