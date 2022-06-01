/*
    Nível 1 	- Exercício FINAL
    Inspiração	- Curso em vídeo
    ===================================================================
    
	Imaginando que um fumante perde, em média, 1 h de vida a cada 
	cigarro fumado, pergunte ao usuário quantos anos ele têm, quantos
	cigaros fuma por dia em média e há quantos anos fuma.

	Calcule quanto tempo de vida ele perdeu em:
		- anos
		- meses
		- semanas
		- dias

	Mostre na tela o resultado.

	Dica: Por etapas!
    
    ===================================================================
*/

programa 
{
	funcao inicio() 
	{

	inteiro idade, cigarros_por_dia, idade_quando_comecou
	inteiro tempo_em_horas, total_cigarros_fumados
	
	real tempo_em_dias, tempo_em_semanas, tempo_em_meses, tempo_em_anos

	// Perguntando a usuário
	escreva("Vamos calcular sua expectativa de vida!\n")
	
	escreva("Quantos anos você tem? ")
	leia(idade)

	escreva("Quantos cigarros fuma por dia, em média? ")
	leia(cigarros_por_dia)

	escreva("Quantos anos tinha quando começou? ")
	leia(idade_quando_comecou)


	// Calculando o tempo perdido
	total_cigarros_fumados = (idade - idade_quando_comecou) * 365 * cigarros_por_dia
	
	tempo_em_dias 		= total_cigarros_fumados / 24.0
	tempo_em_semanas 	= tempo_em_dias 	/ 7
	tempo_em_meses		= tempo_em_semanas 	/ 4
	tempo_em_anos		= tempo_em_meses 	/ 12


	// Mostrando o resultado

	limpa()

	escreva("Segundo nossa caluladora especial, você perdeu até então: \n")
	escreva("\t- ",tempo_em_anos, " anos de vida!\n")
	escreva("\t- ",tempo_em_meses, " meses de vida!\n")
	escreva("\t- ",tempo_em_semanas, " semanas de vida!\n")
	escreva("\t- ",tempo_em_dias, " dias de vida!\n")

	escreva("Tudo isso por fumar cigarros! Uau!") 
			
	}
}
