/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 06/06/22
 
    ===================== Nível 2 - Exercício 01 =====================

    => Escreva um programa que pergunte a velocidade de um carro. 
    => Caso ultrapasse 80Km/h, exiba uma mensagem dizendo que o usuário 
    foi multado. 
    => Nesse caso, exiba o valor da multa, cobrando R$5 por 
    cada Km acima da velocidade permitida
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
		/*
			Neste nível, o principal é utilizar os OPERADORES RELAIONAIS.
		  		-- Sendo eles:
		  			-- [ > ] - "Maior que" - Compara se o primeiro é MAIOR que o segundo
		  			-- [ < ] - "Menor que" - Compara se o primeiro é MENOR que o segundo
		  			-- [ >= ] - "Maior ou igual a" - O mesmo que [ > ], porém tolera igualdade
		  			-- [ <= ] - "Menor ou igual a" - O mesmo que [ < ], porém tolera igualdade
		  			-- [ == ] - "Igual a" - Compara se o primeiro é IGUAL ao segundo
		  			-- [ != ] - "Diferente de" - Compara se o primeiro é DIFERENTE do segundo
		  			
		  		-- O resultado dependerá se a comparação der VERDADEIRO ou FALSO como resultado
		*/

		// Declarando variáveis autodescritivas
		inteiro velocidade_carro, limite_velocidade,velocidade_em_excesso
		real valor_multa, total_multa

		// Atribuindo valor aqui para facilitar o reaproveitamento do código
		limite_velocidade = 80
		valor_multa = 5.00

		// Perguntando ao usuário
		escreva("Em qual velocidade você dirige normalmente? km/h: ")
		leia(velocidade_carro)


		// Aplicando condicional para comparar a velocidade com o limite
		se(velocidade_carro > limite_velocidade){

			// Calculando a multa
			velocidade_em_excesso = velocidade_carro - limite_velocidade

			total_multa = velocidade_em_excesso * valor_multa 


			// Informando ao usuário
			limpa()

			escreva("Você está andando rápido demais")
			escreva("Você está ", velocidade_em_excesso, " km/h acima do limite. \nSua multa é: R$ ", total_multa)


		// Caso não tenha atendido à condição, é realizada esta daqui:
		} senao {

			escreva("Tudo certo, boa viagem!")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2058; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */