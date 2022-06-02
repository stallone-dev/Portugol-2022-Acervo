/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    ===================== Nível 0 - Exercício 02 =====================

    Além de mostrar na tela, é importante saber o que o usuário quer,
    vamos perguntar a ele?
    
    Escreva um programa que pergunte o nome do usuário e então responda:
    "Bem vindo à programação, [NOME]"
    
    Exemplo: "Bem vindo à programação, Stallone!"

    Dica: Além de saber escrever, é importante saber LER e salvar!
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
    
    // Esta coisinha abaixo é uma variável, representa um local dentro do código
    // onde será guardado uma informação. No caso, este lugar está sendo chamado
    // de "nome" e o tipo de lugar que isso ocupa é uma "cadeia", que acomoda
    // uma palavra ou um texto.

	cadeia nome
	
	escreva("Qual o seu nome? ")
	leia(nome)
	
	escreva("Bem vindo à programação, ",nome,"!")
			
	}
}