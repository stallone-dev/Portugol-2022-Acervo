/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    ===================== Nível 0 - Exercício 03 =====================

    Vamos potencializar o "escreva()":
    
    Escreva um programa que pergunte o nome, idade e sabor favorito
    Depois, mostre a seguinte mensagem na tela:
    
    "[NOME] tem [IDADE] anos e adora o sabor de [SABOR]!"
    
    Exemplo: "Stallone tem 22 anos e adora o sabor de sorvete!"

    Dica: Atenção às variáveis!
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	// Cada tipo de informação tem uma variável diferente,
	// Você pode declarar mais de uma variável de uma vez, usando a ","
	
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
