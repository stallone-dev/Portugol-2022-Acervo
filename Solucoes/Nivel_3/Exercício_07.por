/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 22/06/22
 
    ===================== Nível 3 - Exercício 07 =====================

    Vamos criar um pequeno sistema bem interessante:

    =>  Imagine que você presta serviços de programação para 3 empresas.
        Para saber se seus esforços estão sendo produtivos, você decide
        fazer um levantamento de quantos trabalhos fez em cada uma e quantas
        horas dedicou em cada trabalho.

    =>  A partir disso, você deseja saber qual a média de tempo gasto em
        cada empresa e qual a média geral de tempo demandado em um trabalho.

    => Construa um programa que simule a situação acima, exibindo nos resultados:
        => A quantidade de trabalhos feitos e a média de tempo demandado p/empresa
        => A média geral de tempo demandado nos trabalhos

    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	funcao inicio() 
	{
		/*
		 * 	O propósito deste exercício é trabalhar a ideia de "média" em um
		 * 	contexto real. Essa ideia será importantíssima nos próximos exercícios,
		 * 	portanto, eis o cálculo da média:
		 * 		
		 * 		média = (soma dos elementos) / (quantidade de elementos)
		 * 		
		 * 	É uma métrica muito importante, embora não muito útil numa perspectiva
		 * 	de tomada de decisão. Você verá o porquê disso quando chegar ao exercício FINAL.
		 * 	
		 * 	Por hora, basta saber que aqui haverá somatórios, e portanto, laços de repetição!
		 * 	
		 * 	Além disso, como há somatórios, as variáveis são muito importantes; darei
		 * 	uma atenção especial para elas ao longo da solução.
		 */
		
		// Variáveis de controle
		caracter novo_registro
		// Variáveis de análise geral
		inteiro total_trabalhos = 0
		real somatorio_horas = 0.0

		// Variáveis de análise específica
		inteiro trabalhos_empresa1 = 0, trabalhos_empresa2 = 0, trabalhos_empresa3 = 0
		real soma_horas_empresa1 = 0.0, soma_horas_empresa2 = 0.0, soma_horas_empresa3 = 0.0
		

		// Laço contador de empresas
		para(inteiro contador = 0; contador < 3; contador++){

			inteiro cont_trabalho = 0
			real horas_totais_dedicadas = 0.0
			
			faca{
				real horas_dedicadas
				cont_trabalho += 1
				
				escreva("=== empresa nº ", contador+1 ," ===\n")

				escreva("Trabalho nº ",cont_trabalho,"\nHoras dedicadas: ")
				leia(horas_dedicadas)

				horas_totais_dedicadas += horas_dedicadas
			

				escreva("\nInserir novo registro? [S/N] ")
				leia(novo_registro)
				limpa()
				
			} enquanto(novo_registro == 'S') // Fim laço "faça-enquanto"
			
			se(contador == 0){
				
				trabalhos_empresa1 	= cont_trabalho
				soma_horas_empresa1 = horas_totais_dedicadas
				
			} senao se(contador == 1){
				
				trabalhos_empresa2 	= cont_trabalho
				soma_horas_empresa2 = horas_totais_dedicadas
				
			} senao {
				
				trabalhos_empresa3 	= cont_trabalho
				soma_horas_empresa3 = horas_totais_dedicadas
			}

			total_trabalhos += cont_trabalho
			somatorio_horas += horas_totais_dedicadas
					
		} // Fim laço 'para'


		// Cálculos de média
		real media_tempo_geral, media_tempo_empresa1, media_tempo_empresa2, media_tempo_empresa3

		media_tempo_empresa1 = soma_horas_empresa1 / trabalhos_empresa1
		media_tempo_empresa2 = soma_horas_empresa2 / trabalhos_empresa2
		media_tempo_empresa3 = soma_horas_empresa3 / trabalhos_empresa3

		media_tempo_geral = somatorio_horas / total_trabalhos
		
		limpa()
		escreva("========= RESULTADO =========\n\n")
		escreva("Total de trabalhos realizados: ",total_trabalhos)
		escreva("\n\tEmpresa 1: ",trabalhos_empresa1)
		escreva("\n\tEmpresa 2: ",trabalhos_empresa2)
		escreva("\n\tEmpresa 3: ",trabalhos_empresa3)

		escreva("\n\nTotal de horas empregadas: ",somatorio_horas)
		escreva("\n\tEmpresa 1: ", soma_horas_empresa1)
		escreva("\n\tEmpresa 2: ", soma_horas_empresa2)
		escreva("\n\tEmpresa 3: ", soma_horas_empresa3)

		escreva("\n\nMédia de tempo por trabalho: ", Mat.arredondar(media_tempo_geral, 2))
		escreva("\n\tMédia empresa 1: ", Mat.arredondar(media_tempo_empresa1, 2))
		escreva("\n\tMédia empresa 2: ", Mat.arredondar(media_tempo_empresa2, 2))
		escreva("\n\tMédia empresa 3: ", Mat.arredondar(media_tempo_empresa3, 2))
		escreva("\n")

		/*
		 * 	Diferente dos outros exercícios, eu não fiz anotações ao longo do código
		 * 	por dois motivos principais:
		 * 		1 - A essa altura do nível você já possui autonomia suficiente
		 * 		
		 * 		2 - Essa solução em particular não me agrada. A natureza desse problema
		 * 		implica um grande número de variáveis repetitivas, como pode ver em:
		 * 			"media_tempo_empresa 1 2 e 3"
		 * 		Esse tipo de situação é melhor resolvida através de Vetores, que será
		 * 		o assunto do próximo nível. Mas, fica aqui de exemplo de uma solução
		 * 		efiaz, porém ineficiente e pouco escalável.
		 */
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4895; 
 * @DOBRAMENTO-CODIGO = [29];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */