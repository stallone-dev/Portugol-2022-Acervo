/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22

    ===================== Nível 0 - Exercício 02 =====================

    => Escreva um algoritmo que pergunte o NOME do usuário.
    => Mostre no resultado: "Bem-vindo ao Portugol, [NOME]"

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
    
    /* 
       Esta coisinha abaixo é uma VARIÁVEL, representa um local dentro do código
       onde será guardado uma informação. No caso, este lugar está sendo chamado
       de "nome" e o tipo de lugar que isso ocupa é "CADEIA", que pode receber
       palavras ou textos inteiros.
    */

	cadeia nome
	
	escreva("Qual o seu nome? ")
	leia(nome)
	
	escreva("Bem-vindo ao Portugol, ",nome,"!")

    // Você pode colocar a variável no "escreva()" spearando-a do texto original 
    // através de uma vírgula ","

    // Por exemplo: escreva("TEXTO-TEXTO", variável, "TEXTO-TEXTO")
			
	}
}