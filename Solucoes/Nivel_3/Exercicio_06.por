/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    ===================== Nível 3 - Exercício 06 =====================
    
    Vamos a um pequeno desafio: Simular um pequeno levantamento de dados.

    => Construa um algoritmo que receba a IDADE, o GÊNERO e a ALTURA
    de 10  pessoas, em seguida, calcule:
        => Quantos homens foram cadastrados
        => Quantas mulheres foram cadastradas
        => Qual o homem mais velho
        => Qual a mulher mais nova
        => Qual a média de idade entre todos
        => Qual a média de altura entre todos
        => Quantas mulheres tem mais de 1,7m
    
    => Exiba os resultados, arredondados na 1º casa decimal e tabelados
        
    Dica: Sempre faça por etapas, pense antes de começar a escrever.
          Use tantos contadores quanto for necessário!
          
    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	funcao inicio() 
	{
		/*
		 * 	Aqui vamos aplicar o conceito de Desvio Condicional de
		 * 	uma forma mais intensificada.
		 */

		inteiro quant_homens = 0, quant_mulheres = 0, homem_mais_velho = 0, mulher_mais_nova = 999, quant_mulheres_altas = 0

		inteiro somatorio_idade = 0
		
		real somatorio_altura = 0.0
		
		real media_idade_geral, media_altura_geral
		

		para(inteiro contador = 0; contador < 10; contador++){

		 	caracter genero
			inteiro idade
			real altura

		 	escreva("====== PREENCHIMENTO DE FICHA ======\n")
		 	escreva("Ficha [",contador+1,"/10]\n\n")
		 	
			escreva("Informe o gênero da pessoa [M/F]: ")
			leia(genero)

			escreva("Informe a idade da pessoa: ")
			leia(idade)

			escreva("Informe a altura da pessoa [em metros]: ")
			leia(altura)


			se(genero == 'F'){ 

				quant_mulheres += 1 
				
				se(idade < mulher_mais_nova){ mulher_mais_nova = idade }
				
				se(altura > 1.7){ quant_mulheres_altas += 1 }
				
			} senao { 
				
				quant_homens += 1
				se(idade > homem_mais_velho){ homem_mais_velho = idade }
								
			}

			somatorio_idade  += idade
			somatorio_altura += altura

		 	limpa()
		 	
		}

		media_idade_geral = somatorio_idade / 10
		media_altura_geral = somatorio_altura / 10

		escreva("====== RESULTADO ======\n\n")
		escreva("Total de homens cadastrados: ", quant_homens,"\n")
		escreva("Total de mulheres cadastradas: ", quant_mulheres,"\n")
		
		escreva("\nIdade do homem mais velho: ", homem_mais_velho,"\n")
		escreva("Idade da mulher mais nova: ", mulher_mais_nova,"\n")
		
		escreva("\nMédia de idade dos entrevistados: ", Mat.arredondar(media_idade_geral, 1),"\n")
		escreva("Média de altura dos entrevistados: ", Mat.arredondar(media_altura_geral, 1),"\n")

		escreva("\nTotal de mulheres com mais de 1.7m de altura: ", quant_mulheres_altas,"\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */