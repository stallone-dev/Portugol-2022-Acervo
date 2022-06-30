/*
    Autor       - Stallone L. de Souza
    Atualizado em: 22/06/22
 
    =================== Nível 3 - Exercício FINAL ====================

    Meus parabéns por ter chegado ao exercício final do Nível 3! Fico
    grato pelo esforço e dedicação que lhe trouxeram até aqui. Mas
    chega de enrolação, eis a bomba do Nível 3:

    Lembra do exercício 09 aqui do nível 3? Então, nele você tinha
    de analisar o fluxo de caixa de UM ÚNICO dia, avaliando quais produtos
    venderam mais, quanto foi vendido de cada e qual a porcentagem de venda
    dos itens.

    A HL, dona da açaiteria, gostou muito do seu trabalho e quer ampliar
    a análise feita, para ela ter CERTEZA que vai tomar a DECISÃO CERTA.

    => Ela lhe pediu o seguinte: Estenda a análise para 3 dias, e além das
    informações já solicitadas anteriormente, ela quer saber também:
        => Qual a MÉDIA de itens vendidos por dia
        => Qual a MÉDIA da receita diária
        => Qual foi o item MENOS vendido dentre todos
        => Qual item foi MAIS vendido dentre todos

    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Util --> U
	funcao inicio() 
	{
		/*
		 * 	Neste exercício final o objetivo é simular o exercíco 9, porém aplicando-o
		 * 	para 3 dias consecutivos e extraindo novos dados dele.
		 * 	Dos exercícios finais até então, este é o mais fácil, só demandando mais códigos
		 * 	e variáveis de apoio, sem necessitar de lógicas complexas.
		 * 	
		 * 	Para construir essa solução, utilizarei as técnicas já apresentadas:
		 * 		Dedicar mais atenção às variáveis, separando-as em grupos
		 * 		Construir sistemas de apoio com variáveis lógicas para controle
		 * 		Separar o sistema em camadas.
		 * 		
		 * 	Esta solução ficou particularmente grande, como bem deve ser dada a
		 * 	complexidade da análise.
		 * 		Recomendo fortemente que a leia com calma, prestando atenção nos
		 * 		nomes das variáveis e do local onde elas estão.
		 */

		// Variáveis do SISTEMA GLOBAL
		logico sistema_global = verdadeiro, sistema_escolha = verdadeiro
		inteiro cont_dia = 0
		
		// Variáveis do SISTEMA DE ESCOLHA
		logico sistema_vendas = falso, sistema_analise = falso

		// Variáveis do SISTEMA DE VENDAS
		const real preco_acai = 8.0, preco_sorvete = 7.5, preco_brownie = 10.0

		// Variáveis de análise geral
			// Totais gerais
			inteiro total_prod_vendidos = 0
			real total_receita = 0.0

			// Totais específicos
			inteiro acais_vendidos = 0, sorvetes_vendidos = 0, brownies_vendidos = 0
			real receita_acais = 0.0, receita_sorvetes = 0.0, receita_brownies = 0.0


	// SISTEMA_GLOBAL - Base para a interação do usuário
	faca{

		cont_dia++
		
		 // SISTEMA_ESCOLHA - Sistema auxiliar de seleção
		 faca{
		 	
		 	inteiro selecao_proximo_sistema
		 	
		 	escreva("============ Sistema de escolha ============\n\n\t[1] - Realizar Venda\n\t[2] - Analisar vendas\n\t[3] - Encerrar sistema\n\nSUA ESCOLHA: ")
		 	leia(selecao_proximo_sistema)

			/*
			 * 	Atenção a um detalhe: No exercício 8 utilizei o "se senão se"
			 * 	como controle de seleção. Foi uma má-escolha para esse modelo de
			 * 	sistema. O método "escolha-caso" é mais seguro, pois são poucas
			 * 	opções e é fácil regular caso o usuário digite errado.
			 */
			limpa()
			 
		 	escolha(selecao_proximo_sistema){
		 		// Sistema de vendas
		 		caso 1:

				sistema_escolha = falso
				sistema_vendas  = verdadeiro
				sistema_analise = falso
		 		
		 		pare

		 		// Sistema de análise
		 		caso 2:
		 		
		 		sistema_escolha = falso
		 		sistema_vendas  = falso
		 		sistema_analise = verdadeiro
		 		
		 		pare

				// Encerrar todos os sistemas
		 		caso 3:
		 				 		
		 		escreva("Encerrando sistema...")
		 		U.aguarde(800)

		 		sistema_escolha = falso
		 		sistema_vendas  = falso
		 		sistema_analise = falso
		 		
		 		sistema_global  = falso
		 		
		 		pare
				
		 		caso contrario:
		 		
		 		escreva("Por gentileza, insira um número válido.")
		 		U.aguarde(800)
		 		
		 		limpa()

		 		sistema_escolha = verdadeiro
		 		sistema_vendas  = falso
		 		sistema_analise = falso
		 		
		 		pare
		 	}
		 	
		 	
		 } enquanto(sistema_escolha == verdadeiro) // Fim SISTEMA_ESCOLHA



		 // SISTEMA_VENDAS - Sistema principal de vendas
		 enquanto(sistema_vendas == verdadeiro){
			
			inteiro escolha_produto
			caracter nova_venda = 'S'
			
			total_prod_vendidos++

			escreva("Dia ",cont_dia,"\nVenda nº ",total_prod_vendidos,"\n\n")
			escreva("=== ITENS À VENDA ===\n")
			escreva("\t[1] - Açaí rústico \n\t[2] - Sorvete napolitano \n\t[3] - Brownie de pote com sorvete \nSUA ESCOLHA: ")
			
			leia(escolha_produto)
			
			escolha(escolha_produto){
				// Açaí
				caso 1: 
					acais_vendidos++
					receita_acais += preco_acai
					total_receita += preco_acai

					escreva("\nAçaí Rústico vendido!")
				pare

				// Sorvete
				caso 2:
					sorvetes_vendidos++
					receita_sorvetes += preco_sorvete
					total_receita 	  += preco_sorvete

					escreva("\nSorvete Napolitano vendido!")
				pare

				// Brownie
				caso 3:
					brownies_vendidos++
					receita_brownies += preco_brownie
					total_receita 	  += preco_brownie

					escreva("\nBrownie com sorvete vendido!")
				pare

				caso contrario:
					escreva("\n\nITEM INVÁLIDO\nVENDA ANULADA")
					total_prod_vendidos--
				pare
			} // Fim escolha-caso

			escreva("\n\nDeseja iniciar uma nova venda? [S/N] ")
			leia(nova_venda)
			se(nova_venda == 'N'){ sistema_vendas = falso }

		 	limpa()
		 	
		 } // Fim SISTEMA_VENDAS



		 // SISTEMA_ANALISE - Sistema para exibir as análises realizadas
		 enquanto(sistema_analise == verdadeiro){


			// Descobrindo o percentual de vendas
			real percentual_vendas_acai=0.0, percentual_vendas_sorvete=0.0, percentual_vendas_brownie=0.0

			percentual_vendas_acai 	 = (acais_vendidos*1.0)    / (total_prod_vendidos*1.0)
			percentual_vendas_sorvete = (sorvetes_vendidos*1.0) / (total_prod_vendidos*1.0)
			percentual_vendas_brownie = (brownies_vendidos*1.0) / (total_prod_vendidos*1.0)


			// Avaliando as médias solicitadas
			real media_vendas_diaria, media_receita_diaria

			media_vendas_diaria  = (total_prod_vendidos*1.0) / (cont_dia*1.0)
			media_receita_diaria = (total_receita*1.0) / (cont_dia*1.0)


			// Avaliando qual item foi mais e menos vendido
			cadeia item_menos_vendido = "", item_mais_vendido = ""
			
			se(percentual_vendas_acai >= percentual_vendas_sorvete){
				se(percentual_vendas_acai >= percentual_vendas_brownie){
					
					item_mais_vendido = "Acai"
					
				} senao se(percentual_vendas_brownie >= percentual_vendas_sorvete) {
					
					item_mais_vendido = "Brownie"
					
				}
			} senao {
				item_mais_vendido = "Sorvete"
			}


			se(percentual_vendas_acai <= percentual_vendas_sorvete){
				se(percentual_vendas_acai <= percentual_vendas_brownie){
					
					item_menos_vendido = "Acai"
					
				} senao se(percentual_vendas_brownie <= percentual_vendas_sorvete) {
					
					item_menos_vendido = "Brownie"
					
				}
			} senao {
				item_menos_vendido = "Sorvete"
			}

			/*
			 * 	Este método de comparação não é ideal e nem escalável, está aqui apenas
			 * 	porque nessa etapa não temos as ferramentas adequadas ainda.
			 */


			// Exibindo resultados
			limpa()
			escreva("=============== RESULTADOS GLOBAIS ===============\n\n")

			escreva("\tTotal de produtos vendidos: \t", total_prod_vendidos)
			escreva("\n\tTotal de receita adquirida: \tR$ ", total_receita)
			
			escreva("\n\n\tMédia de vendas diária: \t", Mat.arredondar(media_vendas_diaria, 2))
			escreva("\n\tMédia de receita diária: \tR$ ", Mat.arredondar(media_receita_diaria, 2))
			
			escreva("\n\n\tItem MAIS vendido: \t\t", item_mais_vendido)
			escreva("\n\tItem MENOS vendido: \t\t", item_menos_vendido)

			escreva("\n\n=============== RESULTADOS ESPECÍFICOS ===============\n")
			
			escreva("\n\tTotal de Açaís vendidos: \t", acais_vendidos)
			escreva("\n\tTotal de Sorvetes vendidos: \t", sorvetes_vendidos)
			escreva("\n\tTotal de Brownies vendidos: \t", brownies_vendidos)
	
			escreva("\n\n\tReceita total de Acais: \tR$ ", receita_acais)
			escreva("\n\tReceita total de Sorvetes: \tR$ ", receita_sorvetes)
			escreva("\n\tReceita total de Brownies: \tR$ ", receita_brownies)
	
			escreva("\n\n\tPercentual Acai: \t\t", Mat.arredondar(percentual_vendas_acai*100, 2), " %")
			escreva("\n\tPercentual Sorvete: \t\t", Mat.arredondar(percentual_vendas_sorvete*100, 2), " %")
			escreva("\n\tPercentual Brownie: \t\t", Mat.arredondar(percentual_vendas_brownie*100, 2), " %")

			U.aguarde(800)

			caracter retornar
			escreva("\n\nRetornar ao sistema global? [S/N] \n")
			leia(retornar)

			se(retornar == 'S'){ sistema_analise = falso }
			limpa()
			
		 	
		 } // Fim SISTEMA_ANALISE
		
	} enquanto(sistema_global == verdadeiro) // Fim SISTEMA_GLOBAL

	/*	
	 * 	Uma curiosidade: Eu pretendia colocar neste exercício um desafio especial
	 * 	que era o cálculo do DESVIO PADRÃO das vendas realizadas, porém eu percebi
	 * 	que não teria como fazer isso nesse momento, pois demandaria fazer uma variável
	 * 	para CADA VENDA, o que é absurdo de se fazer.
	 * 	
	 * 	Pretendo realocar esse desafio para o próximo nível, onde teremos as ferramentas
	 * 	adequadas para realizá-lo.
	 */
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {total_prod_vendidos, 64, 11, 19}-{total_receita, 65, 8, 13}-{acais_vendidos, 68, 11, 14}-{sorvetes_vendidos, 68, 31, 17}-{brownies_vendidos, 68, 54, 17}-{percentual_vendas_acai, 208, 8, 22};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */