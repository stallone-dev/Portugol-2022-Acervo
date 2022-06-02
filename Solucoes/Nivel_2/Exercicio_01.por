/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 02/06/2022
 
    ===================== Nível 2 - Exercício 01 =====================

    Bem vindo ao nível 2! Parabéns por ter chegado aqui, de verdade!
    Muita gente que busca aprender a programar acaba engalhando na 
    parte aritmética, por achar confuso ou inútil de se aplicar.

    Mas, como você chegou aqui, vamos iniciar os exercícios de Desvio
    Condicional, onde você e o usuário poderão mudar o caminho do resultado!

    Escreva um algoritmo que pergunte ao usuário:
    		-- Quanto ele pagou em um belo pote de 250g de açaí recheado
    		-- Que horas ele prefere comer o açaí [somente números]

    A partir disso, faça um desvio que avalie:
    		-- Se ele pagou mais de R$ 8,00, mostre:
    			-- "Esse açaí está meio caro, não?"
    		-- Se pagou menos, diga:
    			-- "No capricho!"

    Em seguida faça outro desvio, que avalie:
    		-- Se o horário for antes das 18h, mostre:
    			-- "Melhor horário para o açaí!"
    		-- Se for depois das 18h, diga:
    			-- "Olha o resfriado vindo!"

    Dica: Leia um pouco sobre Operações relacionais
    		Ajuda => Linguagem Portugol => Expressões => Operadores relacionais
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
		/*
		  Neste nível, as estratégias se basearão em comparar entradas com
		  algo pré-estabelecido ou outra entrada. De modo que:
		  		-- As entradas serão comparadas através dos operadores relacionais
		  		-- Sendo eles:
		  			-- [ > ] - "Maior que" - Compara se o primeiro é MAIOR que o segundo
		  			-- [ < ] - "Menor que" - Compara se o primeiro é MENOR que o segundo
		  			-- [ >= ] - "Maior ou igual a" - O mesmo que [ > ], porém tolera igualdade
		  			-- [ <= ] - "Menor ou igual a" - O mesmo que [ < ], porém tolera igualdade
		  			-- [ == ] - "Igual a" - Compara se o primeiro é IGUAL ao segundo
		  			-- [ != ] - "Diferente de" - Compara se o primeiro é DIFERENTE do segundo
		  		-- O resultado dependerá se a comparação der VERDADEIRO ou FALSO como resultado
		*/

		// Parte 1 - Declaração das variáveis principais
		real preco_acai, comparativo_preco_acai
		inteiro horario_preferido, comparativo_horario

		// Os comparativos são declarados aqui para facilitar a manutenção futura
		// Ao utulizar a variável em vez do valor em si, fica mais fácil de atualizar
		// os valores de comparação.
		comparativo_preco_acai 	= 8.0
		comparativo_horario 	= 18


		// Parte 2 - Perguntando ao usuário
		escreva("Quanto você pagou nesse delicioso pode de 250g de açaí? ")
		leia(preco_acai)

		escreva("Que horas você prefere comer esse açaí? ")
		leia(horario_preferido)


		limpa() // Limpando a tela para receber melhor os resultados

		
		// Parte 3 - Fazendo o desvio condicional
		// Desvio relativo ao preço do açaí
		se(preco_acai >= comparativo_preco_acai){
			escreva("Esse açaí está meio caro, não?\n")
		} senao {
			escreva("Está no capricho!\n")
		}

		// Desvio relativo ao horário preferido
		se(horario_preferido >= comparativo_horario){
			escreva("Cuidado que o resfriado está vindo!\n")
		} senao {
			escreva("Melhor horário, impossível!")
		}

	}
}