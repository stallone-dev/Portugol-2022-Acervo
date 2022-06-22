/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    ===================== Nível 2 - Exercício 09 =====================

    => Uma empresa quer reajustar o salário de seus funcionários.
    Para isso, ela pretende dar um aumento com base no gênero, idade 
    e tempo de empresa do(a) funcionário(a), com base nas tabelas a seguir:
        => GÊNERO:
            - Mulheres: +5%
            - Homens: +4%
        => IDADE:
            - Menos que 25 anos: +2%
            - Mais que 25, menos que 40 anos: +5%
            - Mais que 40, menos que 65 anos: +10%
            - Mais que 65: +12%
        => TEMPO DE EMPRESA:
            - Menos que 3 anos: +1%
            - Mais que 3 anos, menos que 5 anos: +2%
            - Mais que 5 anos, menos que 10: +5%
            - Mais que 10 anos: +7%

    => Pergunte ao usuário qual o gênero, idade e tempo de empresa do
    funcionário, pergunte seu salário também. Calcule o reajuste e mostre
    qual o novo salário e a diferença salarial.

    => Arredonde todos os valores para 2ª casa decimal.

    Dica: Antes de começar a programar, pense qual seria a melhor
          forma de calcular esse valor, tendo em vista que terá
          de mostrar a diferença depois. Pense também em como pode
          montar a solução de modo que, futuramente, possa ser incluído
          mais um critério, de forma simples e autodescritiva.
    ==================================================================
*/

programa 
{
	inclua biblioteca Matematica --> Mat
	funcao inicio() 
	{
		/*
			Neste exercício a DICA apresentou uma questão muito importante:
				Como montar esse programa de modo que seja possível
				incluir novos critérios com facilidade.
				
			Essa questão trata da escalabilidade do projeto, do quanto ele
			pode ser expandido sem que seja preciso reescrevê-lo.

			Para tratar desse ponto, vale fazer uma reflexão importante:
				O que, de fato, está sendo calculado aqui?
					Nesse caso, o valor do novo salário: novo_salario
					A diferença salarial: acrescimo_salario
					E a porcentagem de aumento: percentual_aumento

			Fazer essa reflexão ajuda a visualizar qual ponto pode ser melhor
			abstraido para escalar o projeto.
				Se o novo salário depende do acréscimo, e esse do percentual,
				tornar esse percentual a "coluna" de nosso projeto parece ser
				o mais vantajoso para escalonar o projeto.
				
			O que isso significa na prática?
				Significa que, se for adicionado um novo critério, basta somá-lo
				a percentual e ele fará parte do cálculo como um todo, sem esforço.
				Algo como:
					percentual_aumento += percentual_novo_criterio

			Vamos ao exemplo de solução:
		 */

		// Declarando variáveis autodescritivas
		caracter genero_colab
		inteiro idade_colab, tempo_empregado
		real percentual_aumento=0.0, acrescimo_salarial, salario_atual, salario_novo
		/*
			Para fins de praticidade, não vou atribuir aqui os percentuais de cada faixa,
			pois isso aumentaria muito o número de variáveis, tornando difícil de compreender
			o que está acontecendo.

			Em um caso real, é interessante que sejam criadas essas variáveis intermediárias,
			através de métodos mais flexíveis como Classes ou Matrizes.
		 */
		 
		// Perguntando ao usuário
		escreva("Qual o gênero do(a) colaborador(a) [M/F]: ")
		leia(genero_colab)

		escreva("\nQual a idade do(a) colaborador(a): ")
		leia(idade_colab)

		escreva("\nHá quantos anos o(a) colaborador(a) trabalha na empresa: ")
		leia(tempo_empregado)

		escreva("\nQual o salário atual do(a) colaborador(a): R$ ")
		leia(salario_atual)


		// Realizando análises condicionais
		// Parte 1 - Análise do gênero
		se(genero_colab == 'F'){
			
			percentual_aumento += 0.05
			
		} senao {
			
			percentual_aumento += 0.04
			
		}

		// Parte 2 - Análise da idade
		se(idade_colab <= 25){
			
			percentual_aumento += 0.02
			
		} senao se(idade_colab <= 40) {

			percentual_aumento += 0.05

		} senao se(idade_colab <= 65) {

			percentual_aumento += 0.1
			
		} senao {

			percentual_aumento += 0.12
			
		}

		// Parte 3 - Análise do tempo de empresa
		se(tempo_empregado <= 3) {

			percentual_aumento += 0.01
			
		} senao se(tempo_empregado <= 5){

			percentual_aumento += 0.02
			
		} senao se(tempo_empregado <= 10) {

			percentual_aumento += 0.05
			
		} senao {

			percentual_aumento += 0.1
			
		}

		/*
		 	Se for incluir novos critérios, basta incluir com o padrão:
		 		percentual_aumento += percentual_novo_criterio
		 */


		// Realizando cálculos finais
		acrescimo_salarial = salario_atual * percentual_aumento
		salario_novo = salario_atual + acrescimo_salarial


		// Exibindo o resultado
		limpa()

		escreva("====== Resultado do aumento salárial ======\n\n")
		escreva("\tSalário atual: \tR$ ",Mat.arredondar(salario_atual, 2),"\n")
		escreva("\tAcrescimo: \tR$ ",Mat.arredondar(acrescimo_salarial, 2),"\n")
		escreva("\tNovo salário: \tR$ ", Mat.arredondar(salario_novo, 2),"\n")
		
		 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3129; 
 * @DOBRAMENTO-CODIGO = [43];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {percentual_aumento, 76, 7, 18};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */