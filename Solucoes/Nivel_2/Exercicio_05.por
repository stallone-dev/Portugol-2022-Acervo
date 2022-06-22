/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 06/06/22
 
    ===================== Nível 2 - Exercício 05 =====================
    
    => Faça um programa que leia nome, gênero e o valor das compras
    do cliente e calcule o preço com desconto. Sabendo que:
        => Homens ganham 7% de desconto
        => Mulheres ganham 19% de desconto

    => Caso o total de compras APÓS o desconto seja maior que R$ 830,00,
    adicione a seguinte mensagem:
        => "MUITO OBRIGADO! 5% do que você pagou será doado para 
        iniciativas de inclusão de mulheres na programação!"
    
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

	  		Neste exemplo de solução, vou abstrair um pouco as coisas:
	  			Em vez de utilizar números por toda parte, como na hora de apliar o desconto, vou
	  			utilizar variáveis que representem esses números.
	  			
	  			Mas, por que fazer isso?

	  			Em resumo: MANUTENÇÃO.
	  			
	  			Em detalhes: Imagine que 3 anos depois que você construiu esse código, seu cliente
	  			quer aplicar novamente a mesma promoção, porém com um desconto diferente.
	  				Em vez de 19% de desconto para mulheres, será 25%
	  			Você, sabendo que já fez esse código antes, pode reutilizá-lo, só mudando o percentual.
	  			Fazer isso ao longo de poucas linhas é simples, mas imagine se precisar alterar dezenas
	  			de linhas de código só para atualizar um número.

	  			Aí que entra a variável: Ela substitui o número que seria escrito ali por algo simbólico
	  			e em outro lugar esse "símbolo" é atribuído um valor. Se esse valor for alterado, tudo
	  			se atualiza imediatamente, agilizando MUITO a MANUTENÇÃO e REUTILIZAÇÃO do código.
	  			
		 */

		// Declarando variáveis autodescritivas
		caracter genero_cliente
		
		cadeia nome_cliente

		real valor_compras_cliente
		
		real desconto_homens, desconto_mulheres, valor_mensagem

		real desconto_aplicado, valor_desconto, valor_compras_com_desconto


		// Para facilitar a manutenção, vamos declarar o percentual de desconto aqui
		desconto_homens   = 7.0 / 100
		desconto_mulheres = 19.0 / 100
		valor_mensagem    = 830.0


		// Perguntando ao cliente
		escreva("====== Vamos fazer uma pequena estrevista PROMOCIONAL! ======\n")
		escreva("Qual seu nome? ")
		leia(nome_cliente)

		escreva("Qual seu gênero? [M/F]")
		leia(genero_cliente)

		escreva("Quanto custou suas compras hoje? ")
		leia(valor_compras_cliente)


		// Primeira análise condicional, visando determinar qual é o desconto que será aplicado
		se(genero_cliente == 'F'){
			desconto_aplicado = desconto_mulheres
		} senao {
			desconto_aplicado = desconto_homens
		}


		// Cálculo dos valores após o desconto ser definido
		valor_desconto = valor_compras_cliente * desconto_aplicado
		
		valor_compras_com_desconto = valor_compras_cliente - valor_desconto


		// Informando resultados
		limpa()

		escreva("Parabéns ", nome_cliente, "! Você ganhou R$ ", Mat.arredondar(valor_desconto, 2), " de desconto!\n")
		escreva("Você só vai pagar, hoje, R$ ", Mat.arredondar(valor_compras_com_desconto,2))

		// 2ª análise condicional, para ativar ou não a mensagem extra
		se(valor_compras_com_desconto >= valor_mensagem){

			escreva("MUITO OBRIGADO POR PARTICIPAR! 5% do que você pagou será doado para iniciativas de inclusão de mulheres na programação!\n")
			
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 180; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */