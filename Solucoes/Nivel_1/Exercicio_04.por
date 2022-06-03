/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 04 =====================

    => Sua missão é: 
        => Visite a página de "Ajuda" do Portugol
    	=> Vá em Linguagem Portugol => Bibliotecas
    	=> Leia sobre como incluir bibliotecas
    	=> Inclua a biblioteca Matemática
            => Se quiser, atribua o apelido de " Mat "

    => Mostre o resultado do Exercicio_03 arredondado.
    
    ==================================================================
*/

programa 
{	
	// As bibliotecas geralmente são declaradas aqui, antes da  "função início()"

	inclua biblioteca Matematica --> Mat

	funcao inicio() 
	{

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
	
	escreva("Em dólares:\t", Mat.arredondar(real_para_dolar,2)	, "\n")
	escreva("Em euros:\t", 	 Mat.arredondar(real_para_euro,2)	, "\n")

	/*
		OBS: O arredondamento " Mat.arredondar() " foi utilizado apenas
		na hora de exibir o resultado para não ocorrer contaminação durante
		os cálculos. 

		Isso significa que, se em um dos passos o valor fosse 3.403234
		o passo seguinte só iria considerar " 3.40 ", o que mudaria o resultado.
		
		Se fosse: [VALOR] * 1000, ocorreria:
			3.403234 * 1000 = 3403.234
			3.40 * 1000 = 3400.00

		Imagine se isso fosse o pagamento de seu salário, esse arredondamento
		intermediário não seria nada legal.
	*/
		

	}
}