/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 22/06/22
    
    ===================== Nível 3 - Exercício 01 =====================

    Boas-vindas ao nível 3! Aqui iremos treinar o uso de laços de repetição,
    aprofundando o desvio condicional e salpicando a aritmética novamente!

    => Escreva um algoritmo que leia um número inteiro maior que 0 e 
    faça uma contagem regressiva até 0.

    Ex.: 3..2..1..0!

    => Experimente também um algoritmo de contagem progressiva.

    Ex.: 0..1..2..3!

    DICA: Ajuda => Linguagem Portugol => Estruturas de controle =>
          => Laços de Repetição
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
	/*
	 	Bem, agora que chegamos aos laços de repetição, as coisas vão ficar enxutas!
	 	Um laço de repetição representa um trecho do código que ficará se repetindo até
	 	uma condição ser atendida, por exemplo:
	 		Em uma contagem de 0 até 10, enquanto a contagem não chegar em 10 ela continuará
	 		sendo realizada, quando chegar em 10, ela acabará.

	 	No Portugol existem três laços de repetição:
	 		enquanto () {...}
	 		faca {...} enquanto ()
	 		para () {...}

	 	Dos três, que estão exemplificados abaixo, o "para" é o mais utilizado no dia-a-dia
	 	uma vez que nele o contador e o critério já são declarados logo no começo, sem precisar
	 	criar estruturas externas para controlá-lo, como verá nos outros métodos.
	 */

	 /* 
	  * 	Uma dica importante para este nível: Estude operadores de atribuição.
	  * 		Ajuda -> Linguagem Portugol -> Expressões -> Operação de atribuição
	  */

	inteiro entrada, contador, saida

	escreva("Escolha um número maior que 0\n")
	leia(entrada)

	escreva("===================================================\n")


	/*
	 * 	MÉTODO "ENQUANTO" (while em outras linguagens): Realiza o código enquanto o 
	 * 	critério for verdadeiro.
	 * 		Nesse cenário, é preciso que haja um contador do lado de fora do laço
	 * 		para que assim ele sirva de critério.
	 * 		
	 * 		Observe que o "Enquanto" só executará o código se o critério for verdadeiro,
	 * 		caso não seja, ele nem executará o código.
	 * 		
	 * 		O "Enquanto" é interessante para se usar junto a uma variável do tipo LÓGICA
	 */
	 
	
	escreva("MÉTODO ENQUANTO")

	escreva("\nContagem regressiva: ")
	contador = entrada
	enquanto(contador >= 0){
		
		saida = contador
		
		escreva(saida, "..")
		
		contador -= 1 		// Operador de atribuição, equivalente a: "contador = contador - 1"
		
	}

	escreva("\nContagem progressiva: ")
	contador = 0
	enquanto(contador <= entrada){
		saida = contador
		
		escreva(saida, "..")
		
		contador += 1		// Operador de atribuição, equivalente a: "contador = contador + 1"
	}


	/*
	 * 	Método "FAÇA-ENQUANTO" (do while em outras linguagens): É muito similar ao "enquanto",
	 * 	porém o critério é avaliado ao final do laço.
	 * 		Isso implica que o laço será executado ao menos 1x antes de avaliar o critério. 
	 * 		
	 * 		Também é ótimo para se utilizar junto a uma variável do tipo LÓGICA
	 */
	
	escreva("\n\nMÉTODO FAÇA ENQUANTO")

	escreva("\nContagem regressiva: ")
	contador = entrada
	faca{
		
		saida = contador

		escreva(saida, "..")
		
		contador -= 1
		
	} enquanto (contador >= 0) 	// Observe que o critério está sendo avaliado aqui


	escreva("\nContagem progressiva: ")
	contador = 0
	faca{
		
		saida = contador

		escreva(saida, "..")
		
		contador += 1
		
	} enquanto (contador <= entrada) 	// Observe que o critério está sendo avaliado aqui


	/*
	 * 	MÉTODO "PARA", (for em outras linguagens): É um método que insere dentro do critério
	 * 	o contador e o fator de incremento, reduzindo essas estruturas auxiliares a um único
	 * 	comando de uma linha.
	 * 		É um método ideal para se utilizar com estruturas de contagem
	 * 		A estrutura geral é:
	 * 			para( contador ; critério ; fator de incremento ) {...} 
	 * 			para( inteiro c ; c <= 10 ; c++ ) {...}
	 * 			para( contador ; contador <= entrada; contador += 1 ) {...}
	 */
	
	escreva("\n\nMÉTODO PARA")
	
	escreva("\nContagem regressiva: ")
	para(contador = entrada; contador >= 0; contador--) {
		
		saida = contador

		escreva(saida, "..")

	// Observe que não há estruturas de apoio aqui, não há
	// contadores externos ao laço e nem uma linha de fator de incremento.
	// Tudo isso está contido no próprio critério, no começo do "para".
		
	}

	escreva("\nContagem progressiva: ")
	para(contador = 0 ; contador <= entrada; contador ++){

		saida = contador

		escreva(saida, "..")
		
	}

	escreva("\n===================================================\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */