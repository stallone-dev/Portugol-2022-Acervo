/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
    
    ===================== Nível 3 - Exercício 03 =====================

    Mais um pouquinho de aritmética:

    => Escreva um algoritmo que leia um número inteiro maior que 0 e 
       faça:
         => Uma contagem de 0 até esse número
         => A mesma contagem, só que de 2 em 2
         => A mesma contagem, só que multiplicando o número atual por 3
         => A mesma contagem, só que cada vez que contar, multiplicará
         o número atual + 2 por ele mesmo

   => Mostre O resultado final tabulado e em linhas distintas.

   Ex.:  0..1..2..3..4
         0..2..4
         0..3..6..9..12
         0..3..8..15..24

    DICA: Ajuda => Linguagem Portugol => Estruturas de controle =>
          => Laços de Repetição
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
		/*
		 * 	Observe com atenção o problema proposto:
		 * 		Pede-se que seja feita uma contagem progressiva
		 * 		e a partir dela sejam exibidos diferentes resultados.
		 * 		Sendo eles:
		 * 			-> Contagem simples
		 * 			-> Contagem de 2 em 2
		 * 			-> Contagem com resultado multiplicado
		 * 			-> Contagem com resultado incrementado
		 * 		
		 * 	Há muitas formas de fazer isso, você pode dedicar um laço para
		 * 	cada um resses resultados, pode imbutir os dois últimos dentro do primeiro
		 * 	ou pode analisar um pouco mais e ver que tudo isso pode ser feito dentro 
		 * 	de uma única contagem, através de um bom uso do Desvio Condicional.
		 * 		Para esse último, vamos precisar de um pouco mais de sagacidade:
		 * 			No lugar de exibir números, vamos atribuí-los à uma variável
		 * 			do tipo "cadeia", como se fossem palavras, e exibir ao final
		 * 			o resultado delas.
		 * 	
		 * 	Vamos ver isso na prática:
		 */

		inteiro entrada, contador

		cadeia contagem_simples, contagem_2_em_2, contagem_multiplicada, contagem_incrementada

		contagem_simples 		= "Contagem simples: \t\t"
		contagem_2_em_2 		= "Contagem de 2 em 2: \t\t"
		contagem_multiplicada 	= "Contagem multiplicada por 3: \t"
		contagem_incrementada 	= "Contagem incrementada: \t\t"

		escreva("Digite um número maior que 0: ")
		leia(entrada)

		
		// Dessa vez vou priorizar o método "faça-enquanto"
		contador = 0
		faca{		

			contagem_simples += (contador + ", ")

			se(contador % 2 == 0){
				contagem_2_em_2 += (contador + ", ")
			}

			contagem_multiplicada += (contador * 3 + ", ")

			contagem_incrementada += (((contador + 2) * contador) + ", ")

			contador++  // fator de incremento na contagem
			
		} enquanto(contador <= entrada)

		
		escreva("\n====== Resultado ======\n\n")
		escreva(contagem_simples, "\n", contagem_2_em_2, "\n", contagem_multiplicada, "\n", contagem_incrementada)

		/*
		 * 	Beleza, funcionou que é uma mavarilha, mas o que raios está acontecendo aqui?
		 * 	
		 * 	O que está acontecendo aqui é que transformamos um número em uma palavra.
		 * 	Para um computador, números e palavras são coisas MUITO diferentes, e ele trata
		 * 	essas coisas de modos completamente diferentes.
		 * 		Quando somamos dois números " 1 + 3 ", o computador fará uma contagem e devolverá
		 * 		o número 4.
		 * 		
		 * 		Quando somamos duas palavras " "Stallone" + " programador" ", o que ele fará é
		 * 		uma mesclagem das duas, devolvendo como resultado " Stallone programador ".
		 * 		
		 * 	O que foi feito dentro do laço foi justamente transformar o número em uma palavra, através
		 * 	da soma dele com uma palavra: 
		 * 		( 1 + " um" ) = "1 um"
		 * 		
		 * 	OBS.: Nessa situação de soma/mesclagem, onde há um número e uma palavra, o resultado será
		 * 	sempre uma PALAVRA, pois pela regra dos Tipos de Dados, uma palavra pode conter um número, mas um
		 * 	número não pode conter uma palavra.
		 * 	
		 * 	Com isso dito, a explicação do porquê funcionou é simples:
		 * 		Foi criada uma variável do tipo "cadeia", à ela foram somadas palavras:
		 * 			cadeia nome = "nome: "	// RESULTADO
		 * 			nome += "um" 			// "nome: um"
		 * 			nome += ", 2"			// "nome: um, 2"
		 * 			nome += ", três"		// "nome: um, 2, três"		
		 * 			
		 * 		O resultado disso é um aparente resultado numérico, mas que na verdade é um texto,
		 * 		o que, para o problema proposto, é mais que suficiente para resolvê-lo.
		 */

		 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */