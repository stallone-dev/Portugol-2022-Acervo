/*
    Autor       - Stallone L. de Souza
    Atualizado em: 30/06/22
    
    ===================== Nível 4 - Exercício 05 =====================

    Agora que passamos pelos laços de repetição, pelo desvio condicional
    e pela aritmética no contexto de vetores, vamos agora para um cenário
    importante que só é possível através dos vetores:
		Os laços de repetição comparativos

    Laços comparativos são um tipo especial de lógica, que visa ordenar
    e "arrumar" o interior de um vetor, deixando-o menos aleatório e
    mais fácil de se localizar elementos.

    Para fazer esse tipo de comparação é preciso de 2 laços de repetição
    		O 1º para selecionar um dos elementos do vetor
    		O 2º para selecionar todos os outros enquanto o primeiro está
    		selecionado

    Além disso é interessante utilizar uma variável auxiliar para organizar
    os valores enquanto eles são comparados.

    Com isso dito, vamos ao exercício:

    => Declare um vetor de tamanho 100 e preencha-o com números aleatórios
    
    => Utilize a lógica descrita acima para ordenar esse vetor do menor
    	  número para o maior número

    => Ao terminar, exiba o resultado de todas as posições do vetor.    	
      
    ==================================================================
*/

programa 
{
	inclua biblioteca Util --> U
	funcao inicio() 
	{
		const inteiro T = 100

		inteiro vetor[T]

		// Preenchendo o Vetor
		para(inteiro posicao = 0; posicao < T; posicao++){
			vetor[posicao] = U.sorteia(-999,999)
		}

		

		// Realizando a ordenação
		para(inteiro posicao_base = 0; posicao_base < T; posicao_base++){
			para(inteiro posicao_comparada = 0; posicao_comparada < T; posicao_comparada++){

				se(vetor[posicao_base] < vetor[posicao_comparada]){
					
					inteiro auxiliar = vetor[posicao_base]

					vetor[posicao_base] = vetor[posicao_comparada]
					vetor[posicao_comparada] = auxiliar

				} // Fim "se"

			} // Fim laço "para" -- posição_comparada
				
		} // Fim laço "para" -- posição_base



		/*
		 * 	Vamos analisar com calma o que aconteceu aqui:
		 * 		O objetivo foi ordenar os valores DENTRO do vetor, valores esses
		 * 		que foram gerados aleatoriamente pela biblioteca UTIL.
		 * 		
		 * 		Para fazer isso, primeiro precisamos entrar dentro do vetor, 
		 * 		através do método do laço "para".
		 * 		
		 * 		Depois que entramos no vetor, selecionado a primeira posição dele,
		 * 			vetor[posicao_base]
		 * 		nós iniciamos um novo laço, exatamente igual ao anterior.
		 * 		
		 * 		Neste novo laço, vamos fazer a mesma coisa, selecionar uma das posições
		 * 		do vetor, para "enxergar" o valor que está ali dentro:
		 * 			vetor[posicao_comparada]
		 * 			
		 * 		Observe que neste ponto temos 2 acessos simultâneos ao mesmo vetor:
		 * 			vetor[posicao_base] e vetor[posicao_comparada]
		 * 			
		 * 		Por conta do 2º estar dentro do laço do 1º, ele percorrerá TODOS os valores
		 * 		do vetor antes do primeiro mudar de posição, fazendo algo como:
		 * 						vetor[0]
		 * 						vetor[1] 		 
		 * 	   	vetor[0] enquanto:  vetor[2]
		 * 						vetor[3]
		 * 						vetor[...]
		 * 						
		 * 		Com esse estado alcançado, enfim podemos comparar o primeiro com o segundo,
		 * 		
		 * 			vetor[posicao_base] < vetor[posicao_comparada]
		 * 			
		 * 		de modo que o 1º seja comparado com TODOS os elementos que o 2º alcançar
		 * 		
		 * 		A partir disso foi necessário incluir uma variável auxiliar para "segurar"
		 * 		o valor do 1º enquanto o mesmo é atualizado:
		 * 		
		 * 			auxiliar = vetor[posicao_base] 				==> Aqui o valor original é "segurado" para uso posterior
		 * 			
		 * 			vetor[posicao_base] = vetor[posicao_comparada] 	==> Aqui o vetor original muda para o comparado
		 * 			
		 * 			vetor[posicao_comparada] = auxiliar			==> Aqui o vetor comparado recebe o valor antigo do original
		 * 			
		 * 	Com isso, todos os valores são comparados e alterados de posição, sem duplicar e sem dar erro.
		 * 	
		 * 	OBS: Esse laço comparativo, no Portugol, funciona apenas para valores 
		 * 	INTEIROS e REAIS, em outras linguagens há métodos para fazer o mesmo 
		 * 	com letras e palavras, bem como vetores inteiros.
		 */						


		// Exibindo resultados
		para(inteiro posicao = 0; posicao < T; posicao++){
			escreva("Posição: ",posicao+1," = ",vetor[posicao],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1200; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 43, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */