/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
    
    ===================== Nível 3 - Exercício 01 =====================

    => Escreva um algoritmo que leia um número inteiro maior que 0 e 
    faça uma contagem regressiva até 0.

    Ex.: 3..2..1..0!

    => Experimente alcançar o mesmo resultado utilizando os 3 laços de
       repetição do Portugol
    
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
		 		enquanto(){}
		 		faca{}enquanto()
		 		para(){}

		 	Dos três, que estão exemplificados abaixo, o "para" é o mais utilizado no dia-a-dia
		 	uma vez que nele o contador e o critério já são declarados logo no começo, sem precisar
		 	criar estruturas externas para controlá-lo, como verá nos outros métodos.
		 */
		
		inteiro entrada, contador, saida

		escreva("Escolha um número maior que 0\n")
		leia(entrada)

		escreva("===================================================\n")


		// Método "enquanto", baseado na declaração do contador do lado de fora do método e do critério logo no início
		contador = entrada
		
		escreva("Método enquanto: ")
		
		enquanto(contador >= 0){
			saida = contador
			
			se(contador >0){
				escreva(saida, "..")
			} senao {
				escreva(saida, "!")	
			}
			
			contador -= 1
		}


		// Método "faça-enquanto", muito similar ao "enquanto", porém com o critério sendo avaliado no final do laço
		contador = entrada
		escreva("\n\nMétodo Faça-enquanto: ")
		faca{
			saida = contador

			se(contador >0){
				escreva(saida, "..")
			} senao {
				escreva(saida, "!")	
			}
			
			contador -= 1
		} enquanto(contador >= 0)


		// Método "para", onde o contador está inserido dentro do critério, reduzindo o número de linhas necessárias
		escreva("\n\nMétodo Para: ")
		para(contador = entrada; contador >= 0; contador--){
			
			saida = contador

			se(contador >0){
				escreva(saida, "..")
			} senao {
				escreva(saida, "!")	
			}
		}

		escreva("\n===================================================\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */