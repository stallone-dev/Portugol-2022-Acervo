/*
    Nível 1 	- Exercício 04
    Inspiração	- Curso em vídeo
    ===================================================================
    
    Você decidiu viajar de férias para a Europa, para isso você comprou
    as passagens de ida e volta, alugou um carro por 2 semanas e um hotel
    pelo mesmo tempo. 
		Cada passagem  = 579 euros
		1 dia de hotel = 80  euros
		1 dia de carro = 9.8 euros
    
    Considerando que tudo foi feito pela mesma agência e ela deu 22% de
    desconto no preço final, quanto, EM REAIS, vai custa sua viagem de 2 semanas?

    Mostre na tela o valor final, EM REAIS.

    Dica: Quanto está a cotação do Euro?
          Em um cálculo longo, separar as partes é de grande ajuda.
    
    ===================================================================
*/

programa 
{
	funcao inicio() 
	{

	real dia_Hotel, dia_Carro, passagem
	
	real total_Hotel, total_Carro, total_Passagem
	
	real cota_Euro, desconto, total_Final, total_Final_com_Desconto, valor_em_Reais

	// Declarando e organizando os gastos
	dia_Hotel = 80.0
	dia_Carro = 9.8
	passagem  = 579.0

	total_Hotel 	= dia_Hotel * 14
	total_Carro 	= dia_Carro * 14
	total_Passagem = passagem  * 2

	// Organizando as conversões
	cota_Euro = 5.1
	desconto  = (22.0/100.0)

	// Calculando o resultado
	total_Final = (total_Hotel + total_Carro + total_Passagem)
	total_Final_com_Desconto = total_Final * (1 - desconto)
	
	valor_em_Reais = total_Final_com_Desconto * cota_Euro


	// Mostrando o resultado

	escreva("O valor da viagem em reais é: R$ ",valor_em_Reais,"\n\n")

	escreva("Detalhes:\n")
	escreva("Total em Reais sem desconto: \tR$ ", total_Final * cota_Euro, "\n")
	
	escreva("Desconto em Reais: \t\tR$ ", (total_Final * desconto) * cota_Euro , "\n")
	
	escreva("Total em Reais com desconto: \tR$ ", total_Final_com_Desconto * cota_Euro,"\n")
			
	}
}
