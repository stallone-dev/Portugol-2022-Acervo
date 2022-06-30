/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 30/06/22
 
    ===================== Nível 4 - Exercício 03 =====================

    Vamos avaliar agora a principa vantagem dos vetores:
		A capacidade de armazenar dados separadamente.

    => Na açaiteria da HL, você está analisando o fluxo de caixa do Sorvete.
    Para isso, você está registrando em uma lista o valor de cada venda.

    => Faça um vetor Real de tamanho 5, utilize um laço de repetição para
    perguntar e preencher cada posição com um valor em R$

    => Depois de terminar o laço, mostre qual foi o valor da 3ª venda.

    DICA: Lembrando que na programação a contagem começa em 0 (zero)

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

		const inteiro T = 5
		real vendas_sorvete[T]

		para(inteiro posicao = 0; posicao < T; posicao++){

			escreva("Venda nº ",posicao+1,"\n\nSORVETE\nInsira o valor: R$ ")
			leia(vendas_sorvete[posicao])
			limpa()
		}

		/*
		 * 	Como um vetor é uma coleção de variáveis, as regras que se aplicam
		 * 	às variáveis também se aplicam aqui, apenas precisando lembrar de
		 * 	sempre determinar qual a [POSIÇÃO] que está sendo trabalhada.
		 */

		inteiro escolha_venda
		escreva("Qual venda deseja visualizar? [1 a ",T,"]\nSUA ESCOLHA: ")
		leia(escolha_venda)

		limpa()
		
		escreva("O valor da venda nº ",escolha_venda," foi: R$ ",vendas_sorvete[escolha_venda - 1])
		 											// Observe que subtraí 1 para adequar
		 											// ao modelo de contagem da programação
		 											// O qual começa em 0 (zero)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */