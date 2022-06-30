/*
    Autor       - Stallone L. de Souza
    Atualizado em: 30/06/22
 
    ===================== Nível 4 - Exercício 06 =====================

    Agora que já passou pelos exercícios de manipulação de vetores,
    vamos aprofundar um outro conceito importante: A combinação de
    vetores.

    => Você foi encarregado de montar um sistema simples de cadastro
    de currículos, nele deve constar:
    		=> Nome
    		=> Idade
    		=> Pretenção salarial

    => Com esse sistema montado, também é requerido montar um sistema
    para acessar cada um desses currículos, à critério do analisador.

    => Além disso, os currículos já visualizados devem ser destacados,
    para não serem analisados novamente.

    => Construa um algoritmo que simule esse sistema, utilizando vetores
    e conectando-os pelo mesmo laço de repetição.

    ==================================================================
*/

programa 
{	
	inclua biblioteca Util --> U
	funcao inicio() 
	{
		// Controle de vetores
		const inteiro T = 10

		cadeia nome_candidato[T]
		inteiro idade_candidato[T]
		real pretencao_candidato[T]

		// Controle de sistemas
		logico sistema_global = verdadeiro, sistema_auxiliar = falso, sistema_preenchimento = falso, sistema_consulta = falso

		faca{

			// Sistema auxiliar
			faca{

				inteiro sistema_escolhido
				
				escreva("============ SELEÇÃO DE SISTEMAS ============\n\n\t[1] - Sistema de preenchimento\n\t[2] - Sistema de análise\n\t[3] - Encerrar sistema\n\nSUA ESCOLHA: ")
				leia(sistema_escolhido)

				limpa()
				escolha(sistema_escolhido){

					// Preenchimento de fichas
					caso 1:

						sistema_auxiliar 	  = falso
						sistema_preenchimento = verdadeiro
						sistema_consulta 	  = falso
						
					pare

					caso 2: 
					
						sistema_auxiliar 	  = falso
						sistema_preenchimento = falso
						sistema_consulta 	  = verdadeiro
						
					pare

					caso 3:

						sistema_auxiliar 	  = falso
						sistema_preenchimento = falso
						sistema_consulta 	  = falso
						sistema_global        = falso
						
					pare

					caso contrario:
						
						escreva("Por favor, insira um dígito válido...")

						U.aguarde(800)
						limpa()

						sistema_auxiliar      = verdadeiro
						sistema_preenchimento = falso
						sistema_consulta	  = falso
						
					pare
				}
				
			} enquanto(sistema_auxiliar == verdadeiro) // Fim do sistema AUXILIAR



			// Sistema de preenchimento
			inteiro contador_curriculo = 0
			
			enquanto(sistema_preenchimento == verdadeiro){
				
				escreva("============ SISTEMA DE PREENCHIMENTO ============\n")

				escreva("Candidato nº ",contador_curriculo+1,"\n")

				escreva("\n\tInsira o nome: ")
				leia(nome_candidato[contador_curriculo])

				escreva("\tInsira a idade: ")
				leia(idade_candidato[contador_curriculo])

				escreva("\tInsira a pretenção salarial: R$ ")
				leia(pretencao_candidato[contador_curriculo])

				
				se(contador_curriculo == T){
					sistema_preenchimento = falso
				} senao {
					caracter continuar
					escreva("\n\nDeseja inserir um novo currículo? [S/N] ")
					leia(continuar)

					se(continuar == 'N'){
						sistema_preenchimento = falso
					}
				}
				
				limpa()
				
				contador_curriculo++
				
			} // Fim do sistema de PREENCHIMENTO



			// Sistema de consulta
			cadeia status_curriculo[T]
			enquanto(sistema_consulta == verdadeiro){
				
				inteiro consulta
				
				escreva("============ SISTEMA DE CONSULTA ============\n")
				escreva("\nSituação currículos: ")
				
				para(inteiro posicao = 0; posicao < T; posicao++){

					se(nome_candidato[posicao] != ""){
						se(status_curriculo[posicao] == ""){ status_curriculo[posicao] = "Aguardando análise" }
						
						escreva("\nCurrículo ",posicao+1,": ",status_curriculo[posicao])
					}
				}

				escreva("\n\nQual currículo deseja consultar: ")
				leia(consulta)

				limpa()

				escreva("====== RESULTADO DA CONSULTA ======\n")
				escreva("\n\tNome:",nome_candidato[consulta-1])
				escreva("\n\tIdade: ",idade_candidato[consulta-1])
				escreva("\n\tPretenção: ",pretencao_candidato[consulta-1])

				status_curriculo[consulta-1] = "[ANALISADO]"

				caracter continuar_consulta
				escreva("\n\nDeseja consultar outro? [S/N]")
				leia(continuar_consulta)

				se(continuar_consulta == 'N'){ sistema_consulta = falso }
				
			} // Fim do sistema CONSULTA
			
			
		} enquanto(sistema_global == verdadeiro) // Fim do sistema GLOBAL

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 834; 
 * @DOBRAMENTO-CODIGO = [54, 103];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome_candidato, 37, 9, 14}-{idade_candidato, 38, 10, 15}-{pretencao_candidato, 39, 7, 19};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */