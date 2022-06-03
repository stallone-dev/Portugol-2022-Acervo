/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 07 =====================

    =>  Imaginando que um fumante perde, em média, 30 min de vida a cada 
        cigarro fumado, pergunte ao usuário quantos anos ele têm, quantos
        cigaros fuma POR DIA e há quantos anos ele fuma.

    => Calcule quanto tempo de vida ele PERDEU até então em:
		    => Anos
		    => Meses
		    => Semanas
		    => Dias
    
    => Mostre cada resultado separadamente (Tanto 1 mês quanto 30 dias)
        => Arredonde os resultados para 2º casa decimal
    
    ==================================================================
*/

programa 
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{

	/*
		Desta vez, a estratégia será representada de um jeito diferente:
		Em vez de passos, serão definidos objetivos a serem concluídos.
		
		Tendo isso dito, os objetivos são:
			-- Transformar a entrada em uma medidade tempo-base
			-- Converter esse tempo-base nas medidas de tempo desejadas
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
	escreva("\t- ", Mat.arredondar(tempo_em_dias,2), 	" dias de vida!\n")

	escreva("Tudo isso por fumar cigarros! Uau!\n") 
		
	}
}