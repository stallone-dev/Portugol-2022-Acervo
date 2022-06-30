/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    ===================== Nível 3 - Exercício 09 =====================

    Mais uma simulação: Vamos simular uma análise de fluxo de caixa!

    => Você foi encarregado de fazer uma análise das vendas de uma
    açaiteria, com o objetivo de encontrar quais produtos vendem mais,
    para que assim a proprietária do local, a srta. HL, possa direcionar
    seu próximo lote de investimentos.
    
    => HL lhe informa que a açaiteria trabalha com os seguintes produtos:
        => Açaí rústico
        => Sorvete napolitano
        => Brownie de pote com sorvete

    => Ela lhe pede para acompanhar o fluxo de caixa ao longo de 1 dia
    e em seguida informar as seguintes coisas:
        => Quantos produtos foram vendidos
        => Quanto de cada produto foi vendido
        => Qual o valor total das vendas de cada produto
        => Qual a porcentagem de venda dos três itens em relação ao total geral

    => Exiba todos os resultados arredondados e tabelados.

    DICA: Antes de calcular o fluxo de caixa, é preciso TER um fluxo
          de caixa.
          
    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	funcao inicio() 
	{
		/*		
		 * 	Vamos pensar um pouco sobre esse problema:
		 * 	Nele existe um ambiente de vendas e um ambiente de análise das vendas.
		 * 		Dentro do ambiente de vendas, não há um limite claro de quantas
		 * 		repetições vão ocorrer, é algo fora do controle.
		 * 		Além disso, dessas vendas é preciso extrair continuamente várias
		 * 		informações importantes, como contagem e somatório
		 * 		
		 * 		No ambiente de análise, os cálculos devem ser precisos e flexíveis,
		 * 		sem números fixos declarados no meio do código.
		 * 	
		 * 	Para lidar com uma situação assim, o ideal é utilizar Funções separadas
		 * 	para cada parte do código, coisa que veremos no Nível 5. Por hora, vejamos
		 * 	uma solução cabível.
		 * 	
		 * 	
		 * 	Neste problema em particular, a coluna vertebral de nosso código será as Variáveis Globais.
		 * 		Por conta da natueza do problema, que diz respeito a um fluxo de dados supervisionado,
		 * 		quase não há espaço para Variáveis Locais.
		 * 		
		 * 	Por isso, a prioridade será organizar as variáveis de uma foma eficaz, atribuindo a elas as condições
		 * 	iniciais necessárias para o correto funcionamento.
		 * 	
		 * 	A princípio, vou organizá-las em grupos, assim:
		 */

		// Grupo do FLUXO DE CAIXA
			// Variáveis de controle
			caracter continuar
			inteiro escolha_fluxo, escolha_venda
			logico novo_fluxo = verdadeiro, nova_venda = verdadeiro

			// Variaveis de parâmetro
			real preco_acai = 8.0, preco_sorvete = 7.5, preco_brownie = 10.0

			// Variáveis de registro genéricas
			inteiro cont_prod_vendidos = 0
			real total_vendas = 0.0

			// Variáveis de registro específicas			
			inteiro quant_acai_vendidos = 0, quant_sorvete_vendidos = 0, quant_brownie_vendidos = 0
			real vendas_acai = 0.0, vendas_sorvete = 0.0, vendas_brownie = 0.0

		// Grupo de ANÁLISE
			real percentual_vendas_acai, percentual_vendas_sorvete, percentual_vendas_brownie


		// Criando um fluxo de caixa utilizando os métodos "ENQUANTO" e "FAÇA-ENQUANTO"
		enquanto(novo_fluxo == verdadeiro){
		escreva("====== FLUXO DE CAIXA ======\n")
		escreva("Escolha sua operação: \n\t[1] - Nova Venda \n\t[2] - Encerrar o dia \n\tESCOLHA: ")
		leia(escolha_fluxo)

		// Definição do critério de parada
		se(escolha_fluxo == 2){
			
			escreva("DIA ENCERRADO...")
			novo_fluxo = falso
			
		} senao {

			// Laço para registro das vendas
			faca{

				cont_prod_vendidos += 1
				
				limpa()
				escreva("Venda nº ", cont_prod_vendidos ,".\n")
				
				escreva("=== ITENS À VENDA ===\n")
				escreva("\t[1] - Açaí rústico \n\t[2] - Sorvete napolitano \n\t[3] - Brownie de pote com sorvete \n\tESCOLHA: ")
				leia(escolha_venda)

				// Escolha-caso para melhor trabalhar qual item está sendo vendido
				escolha(escolha_venda){
					// Açaí
					caso 1: 
						quant_acai_vendidos += 1
						
						total_vendas += preco_acai
						vendas_acai  += preco_acai

						escreva("Açaí Rústico vendido!")	
					pare

					// Sorvete
					caso 2:
						quant_sorvete_vendidos += 1
						
						total_vendas   += preco_sorvete
						vendas_sorvete += preco_sorvete

						escreva("Sorvete Napolitano vendido!")
					pare

					// Brownie
					caso 3:
						quant_brownie_vendidos += 1
						
						total_vendas   += preco_brownie
						vendas_brownie += preco_brownie

						escreva("Brownie com sorvete vendido!")
					pare
				} // Fim escolha-caso

				escreva("\n\nDeseja iniciar uma nova venda? [S/N] ")
				leia(continuar)
				se(continuar == 'N'){ nova_venda = falso }
				
				limpa()
				
			} enquanto(nova_venda == verdadeiro) // Fim laço "faça-enquanto"
				
		} // Fim da condicional SENAO - fluxo de caixa
		} // Fim do laço ENQUANTO - fluxo de caixa


		// Análise dos resultados
		percentual_vendas_acai 	 = (vendas_acai / total_vendas) * 100
		
		percentual_vendas_sorvete = (vendas_sorvete / total_vendas) * 100
		
		percentual_vendas_brownie = (vendas_brownie / total_vendas) * 100

		
		limpa()

		escreva("============ RESULTADOS ============\n\n")

		escreva("Quantidade de produtos vendidos: ", cont_prod_vendidos)
		escreva("\n\t Açaís vendidos: \t", quant_acai_vendidos)
		escreva("\n\t Sorvetes vendidos: \t", quant_sorvete_vendidos)
		escreva("\n\t Brownies vendidos: \t", quant_brownie_vendidos)

		escreva("\n\nMontante total dos produtos vendidos: R$ ", total_vendas)
		escreva("\n\t Montante Acai: \t", vendas_acai)
		escreva("\n\t Montante Sorvete: \t", vendas_sorvete)
		escreva("\n\t Montante Brownie: \t", vendas_brownie)

		escreva("\n\nPercentual de vendas: ")
		escreva("\n\t Percentual Acai: \t", Mat.arredondar(percentual_vendas_acai, 2), " %")
		escreva("\n\t Percentual Sorvete: \t", Mat.arredondar(percentual_vendas_sorvete, 2), " %")
		escreva("\n\t Percentual Brownie: \t", Mat.arredondar(percentual_vendas_brownie, 2), " %")
		
		
		

	}
}














/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2083; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */