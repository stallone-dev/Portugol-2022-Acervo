/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    =================== Nível 2 - Exercício FINAL ====================

	O exercício desta vez é um clássico da lógica do desvio condicional:
	O cálculo do IMC e sua pirâmide condicional.
    
	=> O cálculo co IMC consiste na relação entre peso e altura, de modo
	a criar um valor que simboliza o Índice de Massa Corporal.

	=> Esse cálculo é feito assim: (Peso / Altura²)

	=> A partir desse valor, é utilizada uma tabela para definir qual
	grupo a pessoa se enquadra em relação à sua massa corporal. Aqui 
	vamos considerar esta tabela aqui:
		=> Magreza grave	[<16]
    		=> Magreza leve	[>=16 e <18.5]
    		=> Peso normal		[>=18.5 e <25]
    		=> Sobrepeso		[>=25 e <30]
    		=> Obesidade		[>=30]

	=> Neste exercício, simule o cálculo do IMC, mostrando qual faixa
	o usuário se encontra.
    
    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{
		/*
		 	Como é um exercício clássico, vou apresentar duas soluções que
		 	englobam os aprendizados até aqui:
		 		1 - O método clássico que gera uma "pirâmide de SEs"
		 		2 - Um método modernizado utilizando o "Senao se"
		 */

		// Declarando variáveis autodescritivas
		cadeia resultado=""
		inteiro metodo
		real peso, altura, IMC

		

		// Perguntando ao usuário
		escreva("Vamos calcular seu IMC!\n")
		escreva("\tQual seu peso em Kg? ")
		leia(peso)
		escreva("\tQual sua altura em metros? ")
		leia(altura)

		limpa()

		escreva("[ESCOLHA-MÉTODO] [1 ou 2]: ")
		leia(metodo)


		// Realizando cálculos

		IMC = peso / (altura * altura)


		// Realizando análise condicional
		escolha(metodo){
			caso 1:
			// Metodo 1 - Piramide de "SEs"

			se(IMC <= 30){
		
				resultado = "SOBREPESO"		
				se(IMC <= 25){
					
					resultado = "SAUDÁVEL"
					se(IMC <= 18.5){

						resultado = "MAGREZA LEVE"
						se(IMC < 16){

							resultado = "MAGREZA SEVERA"
						}
					}
				}
				
			} senao {

				resultado = "OBESIDADE"
				
			}
			pare


	// ========================================================
			caso 2:
			// Método 2 - Inferência pelo "senao se"

			se(IMC < 16){
				
				resultado = "MAGREZA SEVERA"
				
			} senao se(IMC <= 18.5){

				resultado = "MAGREZA LEVE"
				
			} senao se(IMC <= 25){

				resultado = "SAUDÁVEL"
				
			} senao se(IMC <= 30){

				resultado = "SOBREPESO"
				
			} senao {

				resultado = "OBESIDADE"
			}
			pare
		}

		/*
		 	Observe que os dois métodos chegam no mesmo resultado, porém o primeiro torna-se complicado de
		 	escalonar, de adicionar novas faixas.
		 		Observe que a cada passagem de faixa ele atribui um valor ao Resultado; para chegar no resultado
		 		de "MAGREZA SEVERA" é preciso mudar o valor do resultado 3x antes, isso é muito ineficiente em
		 		questão de cálculo.

		 		Imagine que cada vez que é preciso mudar o valor do resultado, um pouquinho de tempo é gasto a mais
		 		se 1 milhão de usuários fizerem esse cálculo ao mesmo tempo, será um tempo imenso para calcular 
		 		tudo isso.

		 		Fora a própria estrutura, que é um pouco confusa de saber onde começa e termina cada faixa.
		 		
		 		Imagine então se precisasse separar em faixas de 5 em 5, o tamanho dessa pirâmide seria imenso e
		 		super confuso!
		 		
			Já o segundo método é um pouco menos intuitivo, porém é bem mais direto ao ponto em questão de cálculo.
				Se o IMC não atende ao requisito, o resultado não é alterado, pulando um cálculo que seria realizado.
		 	
		 */
		

		// Exibindo resultados
		limpa()
		escreva("====== RESULTADO ======\n")
		escreva("\tSeu IMC é: ",Mat.arredondar(IMC, 1), ".\n\tSua faixa indica: ", resultado,".\n")
		 
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */