/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 03 =====================

    => Escreva um algoritmo que converta reais (R$) em Dólares e Euros
    => Pergunte ao usuário qual a cotação atual de cada um.
    => Mostre para o usuário qual o resultado da conversão.

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
		Neste caso, a estratégia usada será um pouco diferente:
	  		-- Declarar grupos de variáveis:
	  			-- Um grupo de entrada
	  			-- Um grupo de conversões
	  			-- Um grupo de resultados
			-- Perguntar ao usuário quanto ele quer converter e as cotas
			-- Calcular cada passo da conversão, separadamente
			-- Exibir o novo resultado
	*/

	// Parte 1 - Declaração dos grupos de variáveis
	real valor_de_entrada

	real cota_dolar, cota_euro
	
	real real_para_dolar, real_para_euro


	// Parte 2 - Perguntas ao usuário
	escreva("Quantos reais você quer converter? R$ ")
	leia(valor_de_entrada)

	escreva("Quanto está a cotação do dólar? ")
	leia(cota_dolar)

	escreva("Quanto está a cotação do euro? ")
	leia(cota_euro)

	
	// Parte 3 - Realizar os cálculos de conversão
	real_para_dolar = valor_de_entrada / cota_dolar
	real_para_euro  = valor_de_entrada / cota_euro
	
		
	// Parte 4 - Mostar os resultados
	limpa()
	escreva("O valor de R$ ", valor_de_entrada, " vale:\n\n")
	
	escreva("Em dólares:\t", real_para_dolar, "\n")
	escreva("Em euros:\t", real_para_euro, "\n")

	/*
		OBS: O operador "\t" tabula o resultado, deixando-o em
		uma posição padronizada de melhor visualização
	*/
		
	}
}