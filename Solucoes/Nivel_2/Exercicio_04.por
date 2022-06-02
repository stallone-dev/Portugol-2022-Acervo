/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 02/06/2022
 
    ===================== Nível 2 - Exercício 04 =====================

    De volta à boa e velha lógica do desvio condicional!

    Desta vez, vamos para um desafio clássico: A pirâmide do IMC!
    
    Pergunte ao usuário a ALTURA e o PESO dele.
    		-- Com essas informações, calcule o IMC dele
    		-- Exiba na tela qual faixa de IMC ele se encontra
    		-- Exiba também o IMC calculado, com 1 casa decimal

    OBS: IMC = Índice de Massa Corporal, é uma medida que avalia 
         clinicamente se uma pessoa está magra demais ou com gordura 
         demais em relação a altura.

    OBS2: Para fins de praticidade, considere as faixas abaixo:
    		-- Magreza grave 	[<16]
    		-- Magreza leve 	[>=16 e <18.5]
    		-- Peso normal 	[>=18.5 e <25]
    		-- Sobrepeso		[>=25 e <30]
    		-- Obesidade		[>=30]

    Dica: A fórmula do IMC é [ peso(kg) / altura(m)² ]
    		Estude um pouco sobre Operações Lógicas:
    		Ajuda => Linguagem Portugol => Expressões => Operações Lógicas 
    		Lembre-se da biblioteca de matemática!
    
    ==================================================================
*/

programa 
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{
		/*
		  Para calcular o IMC, precisamos colocar um desvio condicional dentro do outro
		  afinal, em uma dessa 5 faixas o cálculo deve estar.
		  Objetivos:
		  	-- Calcular o IMC do usuário.
		  	-- Testar em qual faixa ele se encontra.
		  	-- Mostrar o resultado
		*/

		// Parte 1 - Declaração das variáveis importantes
		real altura_usuario, peso_usuario, IMC
		cadeia faixa_imc
		inteiro metodo_escolhido
		

		// Parte 2 - Perguntando ao usuário
		escreva("Qual a sua altura em metros? [use '.' em vez de ','] ")
		leia(altura_usuario)
		escreva("Qual o seu peso em quilogramas (kg)? ")
		leia(peso_usuario)


		// Parte 3 - Calculando IMC
		IMC = peso_usuario / (altura_usuario * altura_usuario)


		// Parte 4 - Utilizando desvios condicionais para descobrir a faixa
		/*
		  Vou fazer algo diferente aqui:
		  	Mais abaixo estarão escritas funções do lado de fora
		  	da função "inicio".
		  			  	
		  	Elas são chamadas de "funções auxiliares" e serão tema de nosso
		  	nível 5 aqui nessa jornada.

		  	Por agora, o que precisa saber é: Cada uma dessas funções auxiliares
		  	apresenta um método diferente para resolver esse exercício.

		  	Tire um tempo para analisar como cada uma tenta resolver e avalie
		  	qual parece melhor de se usar e atualizar no dia-a-dia.
		*/
		limpa()
		escreva("Escolha um método: \nPirâmide = 1 \nSe-senao-se = 2 \nRESPOSTA: ")
			leia(metodo_escolhido)

		limpa()
		escolha(metodo_escolhido){
			caso 1:
				faixa_imc = metodo_piramide(IMC)
			pare

			caso 2:
				faixa_imc = metodo_se_senao_se(IMC)
			pare

			caso contrario:
				faixa_imc = "ERRO"
				escreva("Número inválido!")
		}
		

		// Parte 5 - Apresentando o resultado
		escreva("Seu IMC é: ", Mat.arredondar(IMC, 1), " o que indica que você está com: ", faixa_imc)
		
	}



// FUNÇÃO AUXILIAR "MÉTODO PIRÂMIDE":
	
	funcao cadeia metodo_piramide(real IMC){
		
		cadeia resposta

	// Atenção a esta parte do código:
		se (IMC < 16.0){
			resposta = "MAGREZA SEVERA"
		} senao {
			se (IMC >= 16.0 e IMC < 18.5){
				resposta = "MAGREZA LEVE"
			} senao {
				se (IMC >= 18.5 e IMC < 25){
					resposta = "PESO SAUDÁVEL"
				} senao {
					se (IMC >= 25 e IMC < 30){
						resposta = "SOBREPESO"
					} senao {
							resposta = "OBESIDADE"
					}
				}
			}
		}
	// =================================

		retorne resposta
	}




// FUNÇÃO AUXILIAR "MÉTODO SE-SENAO-SE":
	
	funcao cadeia metodo_se_senao_se(real IMC){
		
		cadeia resposta
	
	// Atenção a esta parte do código:
		se (IMC < 16.0){
			
			resposta = "MAGREZA SEVERA"
			 
		} senao se (IMC >= 16.0 e IMC < 18.5){

			resposta = "MAGREZA LEVE"
			
		} senao se (IMC >= 18.5 e IMC < 25){

			resposta = "PESO SAUDÁVEL"
			
		} senao se (IMC >= 25 e IMC < 30){

			resposta = "SOBREPESO"
			
		} senao {
			
			resposta = "OBESIDADE"
			
		}
	// =======================================================

		retorne resposta
	}


	
}