/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    ===================== Nível 1 - Exercício 03 =====================

    Vamos agora aprofundar as conversões, aplicando a algo mais prático:
    
    Escreva um programa que converta reais (R$) em Dólares, Euros e OURO
    
    Aproveite para perguntar ao usuário qual a cotação atual de cada um.
        
    Mostre para o usuário quanto vale o valor dele nessas três moedas
    separadamente, de forma tabulada (utilizar operador " \t ")

    Dica: Separe em etapas e cuide bem das variáveis!
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	  Neste caso, a estratégia usada será um pouco diferente:
	  	-- Serão declarados grupos de variáveis:
	  		-- Um grupo de cotações
	  		-- Um grupo de conversões
	  		-- Um grupo de resultados
	  	-- Cada grupo será declarado e calculado sequencialmente
	  	-- Será limpada a tela, utilizando o comando "limpa()"
	  	   e será exibido os resultados de forma tabulada 
	  	   pelo operador " \t "
	*/

	// Parte 1 - Declaração dos grupos de variáveis
	real cota_dolar, cota_euro, cota_ouro
	
	real real_para_dolar, real_para_euro, real_para_ouro
	
	real valor_de_entrada


	// Parte 2 - Perguntas ao usuário
	escreva("Quantos reais você quer converter? R$ ")
	leia(valor_de_entrada)

	escreva("Quanto está a cotação do dólar? ")
	leia(cota_dolar)

	escreva("Quanto está a cotação do euro? ")
	leia(cota_euro)

	escreva("Quanto está a cotação do ouro? ")
	leia(cota_ouro)

	
	// Parte 3 - Realizar os cálculos de conversão
	real_para_dolar = valor_de_entrada / cota_dolar
	real_para_euro  = valor_de_entrada / cota_euro
	real_para_ouro  = valor_de_entrada / cota_ouro
	
		
	// Parte 4 - Limpando a tela e mostrando os resultados
	limpa()
	escreva("O valor de R$ ", valor_de_entrada, " vale:\n\n")
	
	escreva("Em dólares:\t", real_para_dolar, "\n")
	escreva("Em euros:\t", real_para_euro, "\n")
	escreva("Em ouro:\t", real_para_ouro, "\n")
		
	}
}