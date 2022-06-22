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
		cadeia resultado
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
		

		// Exibindo resultados
		escreva("
		 
		 

			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2593; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */