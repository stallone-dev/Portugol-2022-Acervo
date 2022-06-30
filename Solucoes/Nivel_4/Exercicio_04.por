/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 30/06/22
    
    ===================== Nível 4 - Exercício 04 =====================

    Vamos exercitar nossa lógica aritmética:

    => Declare um vetor de tamanho 100 e preencha-o com números aleatórios
    		=> Utilize a bibliotea "Útil" para isso

    => Utilizando o que aprendeu até então, calcule:
    		=> A soma de todos os elementos do vetor
    		=> A contagem de todos os ímpares
    		=> A média dos números do vetor
    		=> Qual foi o maior número
    		=> Qual foi o menor número
    		=> Quantos números presentes são múltiplos de 7
      
    ==================================================================
*/

programa 
{	
	inclua biblioteca Util --> U
	funcao inicio() 
	{
		const inteiro T = 100
		inteiro vetor[T]

		// Preenchimento básico do vetor
		para(inteiro posicao = 0; posicao < T; posicao++){
			vetor[posicao] = U.sorteia(-100, 100)
		}


		// Análise do vetor

		inteiro soma_elementos=0, quantidade_impares=0, multiplos_de_7=0, maior_numero=0, menor_numero=0
		real media_elementos
		
		para(inteiro posicao = 0; posicao < T; posicao++){

			soma_elementos += vetor[posicao]

			se(vetor[posicao] % 2 != 0){ quantidade_impares++ }

			se(vetor[posicao] % 7 == 0){ multiplos_de_7++ }

			se(vetor[posicao] > maior_numero){ maior_numero = vetor[posicao] }

			se(vetor[posicao] < menor_numero){ menor_numero = vetor[posicao] }

		}

		media_elementos = soma_elementos / T


		// Resultados

		escreva("============ Resultados ============\n")

		escreva("Soma dos elementos: \t\t\t\t",soma_elementos)
		escreva("\nMédia dos elementos: \t\t\t\t", media_elementos)
		escreva("\nQuantidade de elementos ímpares: \t\t", quantidade_impares)
		escreva("\nQuantidade de elementos múltiplos de 7: \t", multiplos_de_7)
		escreva("\nMaior elemento observado: \t\t\t", maior_numero)
		escreva("\nMenor elemento observado: \t\t\t", menor_numero)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 30, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */