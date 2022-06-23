/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    ===================== Nível 3 - Exercício 05 =====================

    Mais uma pitada de desvio condicional:

    => Desenvolva um algoritmo que faça um sorteio de números com base
    nos seguintes critérios definidos pelo usuário:
        => Quantos números serão sorteados
        => Qual o menor número do sorteio
        => Qual o maior número do sorteio
    
    => A partir disso, mostre o seguinte resultado:
        => Quantos números PARES foram sorteados
        => Quantos números IMPARES foram sorteados
        => Quantos foram divisíveis por 3 e por 5 (simultaneamente)
        => Qual a soma de todos os números divisíveis por 3 e por 5

    OBS.: Para sortear números aleatórios, utiliza-se a biblioteca
          Útil, dê uma olhada por lá:
          Ajuda => Bibliotecas => Útil => Sorteia

    DICA: Lembra do "Resto da divisão inteira"?
          Contadores são sempre bem-vindos.

    ==================================================================
*/

programa 
{
	inclua biblioteca Util --> U
	funcao inicio() 
	{
		/*
		 * 	No exercício anterior expliquei a ideia de Escopo Global e Local.
		 * 	Aqui o foco será a prática em si deles.
		 */

		inteiro entrada, quant_num_sorteados, menor_num_sorteado, maior_num_sorteado
		
		inteiro quant_pares = 0, quant_impares = 0, quant_divisiveis = 0, soma_num_divisiveis = 0

		cadeia resultado_sorteio = "Os números sorteados foram: "

		escreva("======= Vamos fazer um sorteio! ======\n")
		escreva("Quantos números vamos sortear? ")
		leia(quant_num_sorteados)

		escreva("Qual será o MENOR número sorteado? ")
		leia(menor_num_sorteado)

		escreva("Qual será o MAIOR número sortado? ")
		leia(maior_num_sorteado)

		
		para(inteiro contador = 0; contador < quant_num_sorteados; contador++){

			// Este comando abaixo, além de ser uma variável Local, utiliza uma biblioteca de
			// sorteio de números, para tornar as coisas mais divertidas!
			inteiro num_sorteado = U.sorteia(menor_num_sorteado, maior_num_sorteado)

			resultado_sorteio += (num_sorteado + ", ")

			se(num_sorteado % 2 == 0){ quant_pares += 1 }

			se(num_sorteado % 2 != 0){ quant_impares += 1 }

			se(num_sorteado % 3 == 0 e num_sorteado % 5 == 0 ){ 
				quant_divisiveis += 1 
				
				soma_num_divisiveis += num_sorteado
			}			
		}


		limpa()
		escreva("====== RESULTADO ======\n\n")

		escreva(resultado_sorteio,"\n")
		escreva("Total de números pares: ",quant_pares,"\n")
		escreva("Total de números impares: ",quant_impares,"\n")
		escreva("Total de números divisíveis por 3 e por 5: ",quant_divisiveis,"\n")
		escreva("\nSoma dos números divisíveis: ",soma_num_divisiveis,"\n")
		
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2474; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */