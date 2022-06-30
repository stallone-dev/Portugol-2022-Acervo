/*
    Autor       - Stallone L. de Souza
    Atualizado em: 22/06/22
 
    ===================== Nível 3 - Exercício 08 =====================

    O laço "Para" é muito útil quando se quer ter um controle preciso
    de quantas repetições irão ocorrer, esse controle é necessário em
    situações como uma pesquisa de opinião, uma análise estatística e
    um controle de acesso.

    Vamos simular esse último agora:

    => Crie um pequeno sistema de gerenciamento de acesso, nele deve constar:
        => Uma parte onde a Administração informará o número de fichas
        => Uma parte onde as fichas serão preenchidas manualmente

    => Para a parte adminsitrativa, deve ser preciso usar uma senha para acessar
        Ex.: 1234

    => Para parte de preenchimento dos dados, basta selecioná-la para acessar.

    => Considere aqui que a ficha deve constar:
        => Gênero [F/M]
        => Idade 
        => Salário

    => No momento de preencher os dados da ficha, deve sempre ser exibido:
        => Quantas fichas já foram preenchidas
        => Quantas fichas existem no total
            Ex.: [2 / 10]
                 [3 / 10]

    => Com as fichas preenchidas, calcule e exiba os seguintes dados:
        => Quantas mulheres foram inseridas
        => Quantos homens foram inseridos
        => Qual a média de idade
        => Qual a média salarial

    DICA: Pegue um caderno e desenhe cada processo que existe aqui.
          Separe-os em grupos de etapas de resolução, como se fossem
          mini-algoritmos.
          Analise se esse arranjo de etapas faz sentido para resolver todo 
          o problema proposto.

    ==================================================================
*/

programa 
{	
	inclua biblioteca Util --> U
	inclua biblioteca Matematica --> Mat
	funcao inicio() 
	{	
		/*
		 * Como descrito no exercício, vamos separar o programa em dois sistemas centrais:
		 * 	Um sistema de controle administrativo e um sistema de preenchimento das fichas.
		 * 	Existirá também um sistema auxiliar que controlará tudo, e ele ficará dentro de um laço.
		 * 	
		 * 	Aqui irei utilizar uma tática muito legal que não usei até então: Explorar a fundo os
		 * 	operadores LÓGICOS!
		 * 	
		 * 	Um operador lógico pode ter somente 1 de 2 valores: VERDADEIRO ou FALSO, isso é muito
		 * 	útil para ter um controle preciso de partes do código que o usuário não vai interagir.
		 * 	
		 * 	Por exemplo:
		 * 		enquanto(sistema_ativo == verdadeiro){
		 * 			escreva("O sistema está ativo)
		 * 			...
		 * 			
		 * 			// Encerrando o sistema
		 * 			sistema_ativo = falso
		 * 		}
		 * 		
		 * 	Essa lógica permite ter um controle bem mais preciso seguro em comparação com um caracter "S" ou "N".
		 */


		// Vamos começar separando os sistemas:

		// Variáveis do SISTEMA GLOBAL:
		logico sistema_global = verdadeiro, sistema_auxiliar = verdadeiro
		
		inteiro selecao_sistema

		// Variáveis do SISTEMA ADMINISTRATIVO
		const inteiro senha_admin = 1234 // Senha para acesso administrativo
		inteiro senha
		
		logico acesso_admin = falso, acesso_fichas = falso
		
		inteiro fichas_disponiveis = 0

		// Variáveis do SISTEMA DE PREENCHIMENTO
		inteiro fichas_preenchidas = 0
		
		inteiro total_mulheres = 0, total_homens = 0, total_idade = 0
		
		real total_salario = 0.0


	// SISTEMA GLOBAL
	faca{

		// Sistema auxiliar
		faca{
			
		escreva("========= SISTEMA DE PREENCHIMENTO DE FICHA =========\n\n")
		escreva("Qual parte deseja acessar?\n\t[1] - ADMINISTRAÇÃO\n\t[2] - PREENCHIMENTO\n\t[3] - ANALISAR DADOS\nSua escolha: ")
		leia(selecao_sistema)

		se(selecao_sistema == 1){
			
			escreva("\nDigite a senha de administrador: ")
			leia(senha)
			limpa()

			se(senha == senha_admin){
				acesso_admin = verdadeiro
				acesso_fichas = falso
				sistema_auxiliar = falso // encerrar laço de repetição
			} senao {
				escreva("\nSenha errada - tente novamente")
				U.aguarde(800)
				limpa()
			} 
			
		} senao se(selecao_sistema == 2){

			acesso_fichas = verdadeiro
			acesso_admin = falso
			sistema_auxiliar = falso
			limpa()

		} senao se(selecao_sistema == 3){
			// Encerrando sistema global para dar sequência às análiss
			acesso_fichas = falso
			acesso_admin = falso
			sistema_auxiliar = falso
			sistema_global = falso
			
		} senao {
			
			escreva("\n\nPor gentileza, selecione um número válido.")
			acesso_fichas = falso
			acesso_admin = falso
			U.aguarde(800)
			limpa()
		}
		
		} enquanto(sistema_auxiliar == verdadeiro) // Fim do SISTEMA AUXILIAR


		// Sistema administrativo
		se(acesso_admin == verdadeiro){

			inteiro novas_fichas
			escreva("=== SISTEMA ADMINISTRATIVO ===\n\n")
			escreva("Informe a quantidade de novas fichas: ")
			leia(novas_fichas)

			fichas_disponiveis += novas_fichas

			escreva("\n\nSistema encerrado...")
			U.aguarde(800)
			limpa()
			
		} // Fim sistema administrativo

		
		// Sistema de preenchimento
		se(acesso_fichas == verdadeiro){

			caracter continuar_preenchimento = 'S'
			
			faca{
				caracter genero
				inteiro idade
				real salario
				
				fichas_preenchidas += 1	
				limpa()
				
				escreva("Ficha: [",fichas_preenchidas,"/",fichas_disponiveis,"]\n\n")

				escreva("Informe o gênero da pessoa [F/M]: ")
				leia(genero)

				escreva("Informe a idade da pessoa: ")
				leia(idade)

				escreva("Informe o salário da pessoa: R$ ")
				leia(salario)

				se(genero == 'F'){
					total_mulheres += 1
				} senao {
					total_homens += 1
				}

				total_idade += idade
				total_salario += salario
				
				se(fichas_preenchidas >= fichas_disponiveis){
					continuar_preenchimento = 'N'
				} senao {
					escreva("\nIniciar nova ficha? [S/N] ")
					leia(continuar_preenchimento)
				}
				
			} enquanto(continuar_preenchimento == 'S')

			limpa()
			
		} // Fim sistema de preenchimento
		
	} enquanto(sistema_global == verdadeiro)// Fim do SISTEMA GLOBAL



	// Análise dos dados preenchidos
	real media_salarial, media_idade

	media_salarial = total_salario / fichas_preenchidas
	media_idade = total_idade / fichas_preenchidas


	// Exibição dos resultados
	limpa()
	escreva("========= RESULTADOS =========\n")

	escreva("\nTotal de homens: \t", total_homens)
	escreva("\nTotal de mulheres: \t", total_mulheres)
	escreva("\nMédia salarial: \t", Mat.arredondar(media_salarial, 2))
	escreva("\nIdade média observada: \t", Mat.arredondar(media_idade, 2))

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */