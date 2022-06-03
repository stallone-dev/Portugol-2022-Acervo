/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 0 - Exercício 03 =====================

    => Escreva um algoritmo que pergunte o nome, idade e sabor favorito
    => Mostre a seguinte mensagem na tela:
    => "[NOME] tem [IDADE] anos e adora o sabor de [SABOR]!"
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	   Cada TIPO de informação tem uma variável diferente,
	   		Números inteiros são do tipo INTEIRO
			Números reais são do tipo REAL
			Palavras são do tipo CADEIA
			Letras são do tipo CARACTER
	   Você pode declarar mais de uma variável do mesmo tipo separando-as por ","
	*/
	
	cadeia nome, sabor
	inteiro idade
	
	escreva("Qual o seu nome? ")
	leia(nome)
	
	escreva("Qual a sua idade? ")
	leia(idade)
	
	escreva("Qual o seu sabor favorito? ")
	leia(sabor)
	
	escreva(nome, " tem ", idade, " anos e adora o sabor de ",sabor,"!")
		
	}
}
