/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    ===================== Nível 1 - Exercício 01 =====================

    Bem vindo ao nível 1! Aqui iremos treinar o uso de operadores
    aritméticos, reforçando o uso dos conhecimentos anteriores e
    trabalhando a noção de etapas. Chega de enrolação, direito ao ponto:
	
    Escreva um programa que LEIA dois números inteiros e:
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
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	  Vamos começar a trabalhar com estratégias de resolução:
	  Para resolvermos esse e os próximos problemas, teremos de
	  dividí-lo em etapas e deixar cada etapa bem definida.

	  Neste caso, será esta a estratégia:
	  	-- Declarar as variáveis com os nomes do que representarão
	  	-- Dedicar uma parte do código só para o cálculo delas
	  		-- Utilizar os operadores artiméticos [+, -, *, /]
	  	-- Exibir cada resultado individualmente em um "escreva()"
	  		-- Em vez de escrever tudo em um único "escreva()", 
	  		   aqui será melhor escrever separando cada um, 
	  		   para melhorar a legibilidade do código
	*/

	// Parte 1 - Declaração das variáveis com o nome devido
	real num1, num2
	real soma, subtracao, multiplicacao
	real divisao


	// Perguntar ao usuário os valores
	escreva("Primeiro número: ")
	leia(num1)
	
	escreva("Segundo número: ")
	leia(num2)


	// Parte 2 - Calcular cada valor
	soma            = num1 + num2
	subtracao       = num1 - num2
	multiplicacao   = num1 * num2   // Na programação, a multiplicação é representada por " * " (asterisco)
	divisao         = num1 / num2   // A divisão é representada por " / " (barra normal)


	// Parte 3 - Exibir os resultados, lembrando de usar "\n" para quebrar a linha
	escreva("Resultados:\n")
	
	escreva(num1, " + ", num2, " = ", soma,"\n")
	
	escreva(num1, " - ", num2, " = ", subtracao,"\n")
	
	escreva(num1, " x ", num2, " = ", multiplicacao,"\n")
	
	escreva(num1, " / ", num2, " = ", divisao,"\n")
		
	}
}