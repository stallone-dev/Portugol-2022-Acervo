/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    ===================== Nível 1 - Exercício 04 =====================

    Agora que você têm mais esperiência artimética, vamos tentar um
    cenário real, útil e normalmente um pouco complicado:
    
    Imagine que você decidiu viajar de férias para a Portugal. Para isso
    você comprou as passagens de ida e volta, alugou um carro por 2 semanas 
    e um hotel pelo mesmo tempo.
    
    Considere que os seus custos foram: 
		Cada passagem  = 579 euros
		1 dia de hotel = 80  euros
		1 dia de carro = 9.8 euros
    
    Considerando que a compra de tudo isso foi feita na mesma agência
    e ela deu um desconto de 22% no preço final, quanto, EM REAIS, vai 
    custar sua viagem de 2 semanas?

    Mostre na tela o valor total original, o desconto e o valor final, EM REAIS.

    Dica: Quanto está a cotação do Euro?
    		Etapas são sempre bem-vindas.
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	  Mais uma vez, será utilizada a estratégia de grupos:
	  	-- Serão declarados grupos de variáveis:
	  		-- Um grupo de valores p/unidade
	  		-- Um grupo de valores totais
	  		-- Um grupo de montante e desconto
	  		-- Um grupo de resultados e conversões
	  	-- Cada grupo será declarado e calculado sequencialmente
	  	-- Será limpada a tela, utilizando o comando "limpa()"
	  	   e será exibido os resultados de forma tabulada 
	  	   pelo operador " \t "
	*/

	// Parte 1 - Grupos de variáveis
	real dia_hotel, dia_carro, passagem
	
	real total_hotel, total_carro, total_passagem

	real montante_total, desconto, montante_com_desconto
	
	real cota_euro, montante_em_reais, desconto_em_reais, montante_com_desconto_em_reais


	// Parte 2 - Declarando valores iniciais
	dia_hotel = 80.0
	dia_carro = 9.8
	passagem  = 579.0

	total_hotel 	= dia_hotel * 14
	total_carro 	= dia_carro * 14
	total_passagem = passagem  * 2


	// Parte 3 - Calculando montante e desconto
	montante_total = total_hotel + total_carro + total_passagem

	desconto 	= (22.0/100.0) // O valor " 22% " será melhor compreendido se calculado assim
	
	montante_com_desconto = montante_total * (1 - desconto)


	// Parte 4 - Convertendo valores
	cota_euro = 5.1
	
	montante_em_reais = montante_total * cota_euro
	desconto_em_reais = (montante_total * desconto) * cota_euro

	montante_com_desconto_em_reais = montante_com_desconto * cota_euro


	// Parte 5 - Exibindo os resultados
	escreva("O valor da viagem em reais será: R$ ",montante_com_desconto_em_reais,"\n\n")

	escreva("Detalhes:\n")
	
	escreva("Total em Reais sem desconto: \tR$ ", montante_em_reais, "\n")
	
	escreva("Desconto em Reais: \t\tR$ ", desconto_em_reais, "\n")
	
	escreva("Total em Reais com desconto: \tR$ ",montante_com_desconto_em_reais,"\n")
		
	}
}