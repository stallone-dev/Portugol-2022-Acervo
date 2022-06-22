/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 06/06/22
 
    ===================== Nível 2 - Exercício 02 =====================

    Mais uma pitada de aritmética condicional:
    
    => Crie um algoritmo que leia o nome e as duas notas de um aluno 
    => Calcule a sua média e mostre nos resultados.
    => Analise a média e mostre se o aluno passou (média 7.0)
    
    ==================================================================
*/

programa 
{
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
		 */

		// Declarando variáveis
		cadeia nome_aluno
		real nota_1, nota_2, media_notas

		// Perguntando ao usuário
		escreva("Analisando a nota do aluno\n")

		escreva("Qual o nome do aluno? ")
		leia(nome_aluno)
		
		escreva("Informe a 1ª nota: ")
		leia(nota_1)

		escreva("Informe a 2ª nota: ")
		leia(nota_2)


		// Calculando média
		media_notas = (nota_1 + nota_2) / 2


		// Informando resultado
		limpa()

		escreva("===== RESULTADO =====\n")
		
		se(media_notas >= 7.0){
			
			escreva("Aluno(a): ", nome_aluno," APROVADO(A)! \nMédia: ", media_notas)
			
		} senao se(media_notas >=4){  // senao se é uma abreviação do comando, para não colocar " senao{ se() {} } " e evitar uma pirâmide de "SEs"

			escreva("Aluno(a): ", nome_aluno," EM RECUPERAÇÃO. \nMédia: ", media_notas)
			
		} senao {
			
			escreva("Aluno(a): ", nome_aluno," REPROVADO(A).")
			
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1772; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */