/*
    Nível 0 - Exercício 04
    Fonte:  - Curso em vídeo
    ===================================================================
    
    Escreva um programa que receba dois números inteiros e:
        1 - Some o primeiro pelo segundo
        2 - Subtraia o segundo do primeiro
        3 - Multiplique um pelo outro
        4 - Divida o primeiro pelo segundo
        
    Mostre depois a seguinte mensagem na tela:
    
    "Resultados:"
    "[num1] + [num2] = [resposta]"
    "[num1] - [num2] = [resposta]"
    "[num1] x [num2] = [resposta]"
    "[num1] / [num2] = [resposta]"

    Dica: Números inteiros não são como números reais.
    
    ===================================================================

*/

programa 
{
	funcao inicio() 
	{
	real num1, num2
	real soma, subtracao, multiplicacao
	real divisao
	
	escreva("Primeiro número: ")
	leia(num1)
	
	escreva("Segundo número: ")
	leia(num2)
	
	soma            = num1 + num2
	subtracao       = num1 - num2
	multiplicacao   = num1 * num2
	divisao         = num1 / num2
	
	escreva("Resultados:\n")
	
	escreva(num1, " + ", num2, " = ", soma,"\n")
	
	escreva(num1, " - ", num2, " = ", subtracao,"\n")
	
	escreva(num1, " x ", num2, " = ", multiplicacao,"\n")
	
	escreva(num1, " / ", num2, " = ", divisao)
		
		
	}
}
