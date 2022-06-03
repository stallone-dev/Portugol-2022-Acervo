/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 01 =====================

    => Escreva um algoritmo que LEIA dois números INTEIROS e:
	    => 1 - Some o primeiro pelo segundo
	    => 2 - Subtraia o segundo do primeiro
	    => 3 - Multiplique um pelo outro
	    => 4 - Divida o primeiro pelo segundo

    => Utilize o comando "limpa()" para limpar os resultados.

    => Mostre no resultado a seguinte mensagem:
        => "Resultados:"
        => "[num1] + [num2] = [resposta]"
        => "[num1] - [num2] = [resposta]"
        => "[num1] x [num2] = [resposta]"
        => "[num1] / [num2] = [resposta]"
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	  Vamos começar a trabalhar com estratégias de resolução:
	  Para resolvermos este e os próximos problemas, teremos de
	  dividí-lo em etapas e deixar cada etapa bem definida.

	  Neste caso, será esta a estratégia:
	  	-- Declarar as variáveis com os nomes do que representarão
		-- Perguntar ao usuário os números de entrada
	  	-- Calcular as variáveis
	  		-- Utilizar os operadores artiméticos [+, -, *, /]
	  	-- Exibir cada resultado em um "escreva()"
	*/

	// Parte 1 - Declaração das variáveis com o nome devido
	real num1, num2
	real soma, subtracao, multiplicacao
	real divisao


	// Parte 2 - Perguntar ao usuário os valores
	escreva("Primeiro número: ")
	leia(num1)
	
	escreva("Segundo número: ")
	leia(num2)


	// Parte 3 - Calcular cada operação
	soma            = num1 + num2
	subtracao       = num1 - num2
	multiplicacao   = num1 * num2   // Na programação, a multiplicação é representada por " * " (asterisco)
	divisao         = num1 / num2   // A divisão é representada por " / " (barra normal)


	// Parte 4 - Exibir os resultados, lembrando de usar "\n" para quebrar a linha
	limpa()
	escreva("Resultados:\n")
	
	escreva(num1, " + ", num2, " = ", soma,"\n")
	
	escreva(num1, " - ", num2, " = ", subtracao,"\n")
	
	escreva(num1, " x ", num2, " = ", multiplicacao,"\n")
	
	escreva(num1, " / ", num2, " = ", divisao,"\n")
		
	}
}