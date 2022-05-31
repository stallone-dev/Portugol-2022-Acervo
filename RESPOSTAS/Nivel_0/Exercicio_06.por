/*
    Nível 0 - Exercício 06
    Fonte:  - Curso em vídeo
    ===================================================================
    
    Escreva um programa que converta reais (R$) em dólares, euros e ouro
        
    Mostre para o usuário quanto vale seu dinheiro nessas três moedas

    Dica: Quanto está a cotação de hoje?
    
    ===================================================================

*/

programa 
{
	funcao inicio() 
	{
	real reais, CotaDolares, CotaEuros, CotaOuro
	real ConvDolares, ConvEuros, ConvOuro
	
	escreva("Quantos reais você quer converter? R$ ")
	leia(reais)
	
	
	// Cotação de 31/05/2022
	CotaDolares = 4.75
	CotaEuros   = 5.10
	CotaOuro    = 281.68
	
	ConvDolares = reais / CotaDolares
	ConvEuros   = reais / ConvEuros
	ConvOuro    = reais / ConvOuro
	
	escreva()
		
	}
}
