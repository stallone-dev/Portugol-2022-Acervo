/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    =================== Nível 1 - Exercício FINAL ====================

    Agora que chegou ao fim do nível 1, está na hora de fazer um último
    desafio aritmético:
    
    Imaginando que um fumante perde, em média, 30 min de vida a cada 
    cigarro fumado, pergunte ao usuário quantos anos ele têm, quantos
    cigaros fuma por dia e há quantos anos ele fuma.

    Calcule quanto tempo de vida ele perdeu até então em:
		-- anos
		-- meses
		-- semanas
		-- dias
    Cada um separadamente, de modo que tanto apareça 1 ano quanto 12 meses

    Mostre na tela o resultado final, arredondado para 2º casa decimal e tabelado.

	Dica: Antes de pensar na conversão, é interessante 
		 pensar em como chegar numa medida precisa de tempo
		 para poder começar.
		 Lembre-se de impotar a biblioteca necessária para
		 arredondar os valores.
    
    ==================================================================
*/

programa 
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{

	/*
	  Para concluir este último desafio, vamos aplicar os conhecimentos
	  obtidos até aqui.

	  Desta vez, a estratégia será representada de um jeito diferente:
	  Em vez de passos, serão definidos objetivos a serem concluídos.
	  
	  Tendo isso dito, os objetivos são:
	  	-- Transformar a entrada em uma medidade tempo
	  	-- Converter esse valor-base nas medidas de tempo desejadas
	  	-- Exibir para o usuário o resultado, de forma tabelada e arredondada
	*/

	// Grupo de variáveis
	inteiro idade_atual, cigarros_por_dia, idade_quando_comecou
	
	inteiro total_cigarros_fumados, tempo_base
	
	real tempo_em_dias, tempo_em_semanas, tempo_em_meses, tempo_em_anos


	// Perguntas para o usuário
	escreva("Quantos anos você tem? ")
	leia(idade_atual)

	escreva("Quantos cigarros você fuma por dia, em média? ")
	leia(cigarros_por_dia)

	escreva("Quantos anos tinha quando começou a fumar? ")
	leia(idade_quando_comecou)


	// Convertendo entradas em um valor de tempo-base
	total_cigarros_fumados = (idade_atual - idade_quando_comecou) * 365 * cigarros_por_dia
	
	tempo_base = total_cigarros_fumados / 2  // Cada cigarro = 30 min * 2 = 1h


	// Convertendo o valor de tempo-base nas medidas desejadas
	tempo_em_dias 		= tempo_base 		/ 24.0
	tempo_em_semanas 	= tempo_em_dias 	/ 7
	tempo_em_meses		= tempo_em_semanas 	/ 4
	tempo_em_anos		= tempo_em_meses 	/ 12


	// Mostrando o resultado
	limpa()
	escreva("Segundo nossa caluladora especial, você perdeu até então: \n")
	escreva("\t- ", Mat.arredondar(tempo_em_anos,2),    " anos de vida!\n")
	escreva("\t- ", Mat.arredondar(tempo_em_meses,2),   " meses de vida!\n")
	escreva("\t- ", Mat.arredondar(tempo_em_semanas,2), " semanas de vida!\n")
	escreva("\t- ", Mat.arredondar(tempo_em_dias,2), 	  " dias de vida!\n")

	escreva("Tudo isso por fumar cigarros! Uau!\n") 
		
	}
}