/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 06/06/22
 
    ===================== Nível 2 - Exercício 03 =====================

    => Faça um algoritmo que pergunte a distância que um passageiro 
    deseja percorrer em Km. 
    => Calcule o preço da passagem, cobrando R$0.50 por Km para viagens 
    até 200Km e R$0.45 para viagens mais longas.
    
    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	funcao inicio() 		
	{
		/*
		 	LEMBRANDO - Os operadores relacionais são:
	  			-- [ > ] - "Maior que" - Compara se o primeiro é MAIOR que o segundo
	  			-- [ < ] - "Menor que" - Compara se o primeiro é MENOR que o segundo
	  			-- [ >= ] - "Maior ou igual a" - O mesmo que [ > ], porém tolera igualdade
	  			-- [ <= ] - "Menor ou igual a" - O mesmo que [ < ], porém tolera igualdade
	  			-- [ == ] - "Igual a" - Compara se o primeiro é IGUAL ao segundo
	  			-- [ != ] - "Diferente de" - Compara se o primeiro é DIFERENTE do segundo
		 */
		 
		// Declarando as variáveis autodescritivas
		inteiro distancia_km, patamar_desconto
		real preco_km_padrao, preco_km_com_desconto
		real valor_total

		// Atribuindo valor às variáveis de controle
		patamar_desconto      = 200
		preco_km_padrao 	  = 0.5
		preco_km_com_desconto = 0.45
		

		// Perguntando ao usuário
		escreva("Quantos KM você quer viajar? ")
		leia(distancia_km)

		// Análise condicional para determinar o preço do KM
		se(distancia_km >= patamar_desconto){
			
			valor_total = distancia_km * preco_km_com_desconto
			
		} senao {
			
			valor_total = distancia_km * preco_km_padrao
		}

		// Exibindo resultado
		limpa()

		escreva("O valor a ser pago será: R$ ", Mat.arredondar(valor_total,2))
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 200; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */