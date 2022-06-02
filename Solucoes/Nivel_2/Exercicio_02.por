/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 02/06/2022
 
    ===================== Nível 2 - Exercício 02 =====================

    Vamos dar um passo nas operações aritméticas novamente:

    Escreva um algoritmo que pergunte o nome de um(a) aluno(a) e calcule a 
    média dele(a), com base em 4 notas.

    Considerando a média 7, avalie se o(a) aluno(a) passou ou não.
    		-- Se passou, mostre "[ALUNO] está APROVADO(A), a média foi: [MEDIA]"
    		-- Se a média ficar abaixo de 7 e maior ou igual a 4, informe 
    		   que está em recuperação e pergunte a nota de recuperação.
    		-- Se a nota da recuperação for maior que 5, mostre "[ALUNO] está APROVADO(A)"
    		-- Se não, mostre "[ALUNO] está REPROVADO(A)"

    Dica: Lembre-se, etapas!
    		Importe a biblioteca de Matemática,
    		para ter um resultado elegante!
    
    ==================================================================
*/

programa 
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{
		/*
		  Nossos objetivos são:
		  	-- Obter o nome e as 4 notas do(a) aluno(a)
		  	-- Avaliar se a média aprova é suficente para aprovação ou não
		  	-- Exibir na tela o resultado final
	  		
	  		-- LEMBRANDO - Os operadores relacionais são:
	  			-- [ > ] - "Maior que" - Compara se o primeiro é MAIOR que o segundo
	  			-- [ < ] - "Menor que" - Compara se o primeiro é MENOR que o segundo
	  			-- [ >= ] - "Maior ou igual a" - O mesmo que [ > ], porém tolera igualdade
	  			-- [ <= ] - "Menor ou igual a" - O mesmo que [ < ], porém tolera igualdade
	  			-- [ == ] - "Igual a" - Compara se o primeiro é IGUAL ao segundo
	  			-- [ != ] - "Diferente de" - Compara se o primeiro é DIFERENTE do segundo
	  			
	  		-- O resultado dependerá se a comparação der VERDADEIRO ou FALSO como resultado
		*/

		// Parte 1 - Declaração das variáveis importantes
		cadeia nome_aluno
		real nota1, nota2, nota3, nota4, recuperacao, media_final


		// Parte 2 - Perguntas ao usuário
		escreva("Qual o nome do(a) aluno(a)? ")
		leia(nome_aluno)

		escreva("Qual a nota 1? ")
		leia(nota1)
		escreva("Qual a nota 2? ")
		leia(nota2)
		escreva("Qual a nota 3? ")
		leia(nota3)
		escreva("Qual a nota 4? ")
		leia(nota4)


		// Parte 3 - Calculos e desvios condicionais
		media_final = (nota1 + nota2 + nota3 + nota4) / 4


		// Primeiro desvio: Avaliando se ele passou
		se(media_final >= 7.0){

			limpa()
			escreva(nome_aluno, " está aprovado(a)! A média foi: ", Mat.arredondar(media_final, 2))


		// Segundo desvio: Avaliando se pode ir para recuperação 			
		} senao se(media_final > 4.0) {
			limpa()
			escreva(nome_aluno," caiu na RECUPERAÇÃO!\n\n")
			escreva("Qual a nota de recuperação? ")
			leia(recuperacao)

			// Desvio interno: Avaliando a nota da recuperação
			se(recuperacao >=5) {
				escreva(nome_aluno, " está aprovado(a)!")
			} senao {
				escreva(nome_aluno, " está reprovado(a)!")
			}


		// Continuação do segundo desvio: O aluno não tirou a nota necessária
		} senao {
			limpa()
			escreva(nome_aluno, " está reprovado(a)!")
		}
		
	}
}