/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 08/06/22
 
    ===================== Nível 3 - Exercício 02 =====================

    => Desenvolva um algoritmo que mostre uma contagem regressiva a partir
    do número informado pelo usuário;
    => Marque e exiba os números que forem divisíveis por 3, como mostrado abaixo:

    Ex.: 20, 19, [18], 17, 16, [15], 14, 13, [12], 11, 10, [9], 8, 7, [6], 5, 4, [3], 2, 1

    => Experimente fazer isso com os 3 laços de repetição no Portugol
    
    DICA: Já ouviu falar sobre "Resto da divião inteira"?

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

		/*
		 * 	Nesta questão, o destaque é o uso de um desvio condicional dentro de um laço.
		 * 	Esse desvio atuará sobre TODOS os elementos que passarem por ele, como uma
		 * 	rodovia cheia de carros.
		 */

		inteiro entrada, contador

		escreva("Digite um número maior que 0: ")
		leia(entrada)

		contador = entrada
		enquanto(contador >= 0){		// Por hora vou priorizar o método "enquanto"

			se(contador % 3 == 0){
				escreva("[", contador, "], ")
			} senao {
				escreva(contador, ", ")
			}

			contador--
			// Embora esteja aqui embaixo, no final do laço, esse elemento foi o primero
			// a ser escrito aqui dentro, evitando de causar uma repetição infinita
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1359; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */