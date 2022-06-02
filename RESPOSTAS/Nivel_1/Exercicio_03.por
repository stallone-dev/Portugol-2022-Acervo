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
    separadamente e tabuladas (utilizar operador " \t ")

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
	
	real valor_de_entrada, saida_convertida

	// Parte 2 - Perguntas ao usuário
	escreva("Quantos reais você quer converter? R$ ")
	leia(valor_de_entrada)

	escreva("Quanto está a cotação do dólar? ")

	escreva("Quanto está a cotação do euro? ")

	escreva("Quanto está a cotação do ouro? ")

	// Parte 2 - Perguntar a cotação atual
		
	// Cotação de 31/05/2022
	CotaDolares = 4.75
	CotaEuros   = 5.10
	CotaOuro    = 281.68
	
	ConvDolares = reais / CotaDolares
	ConvEuros   = reais / CotaEuros
	ConvOuro    = reais / CotaOuro
	
	escreva("\nSeus R$ ", reais, " valem:\n\n")
	escreva("Em dólares: ", ConvDolares, "\n")
	escreva("Em euros: ", ConvEuros, "\n")
	escreva("Em ouro: ", ConvOuro, "\n")
		
	}
}