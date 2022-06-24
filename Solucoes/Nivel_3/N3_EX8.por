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
        => Qual o desvio-padrão salarial das mulheres.


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
	funcao inicio() 
	{	
		/*
		 * Como descrito no exercício, vamos separar o programa em dois sistemas centrais:
		 * 	Um sistema de controle administrativo e um sistema de preenchimento das fichas.
		 * 	Existirá também um sistema auxiliar que deverá controlar qual caminho será evocado.
		 */
		 
		const inteiro senha_admin = 1234
		inteiro selecao_sistema, senha
		logico acesso_admin = falso, sistema_auxiliar = verdadeiro, acesso_ficha = falso
		logico sistema_global = verdadeiro


	// SISTEMA GLOBAL
	faca{

		// Sistema auxiliar
		faca{
			
		escreva("========= SISTEMA DE PREENCHIMENTO DE FICHA =========\n")
		escreva("Qual parte deseja acessar?\n\t[1] - ADMINISTRAÇÃO\n\t[2] - PREENCHIMENTO\nSua escolha: ")
		leia(selecao_sistema)

		se(selecao_sistema == 1){
			
			escreva("\nDigite a senha de administrador: ")
			leia(senha)

			se(senha == senha_admin){
				acesso_admin = verdadeiro
				sistema_auxiliar = falso // encerrar laço de repetição
			} senao {
				escreva("\nSenha errada - tente novamente")
				U.aguarde(800)
				limpa()
			} 
			
		} senao se(selecao_sistema == 2){

			acesso_ficha = verdadeiro
			sistema_auxiliar = falso
			limpa()
			
		} senao {
			
			escreva("\n\nPor gentileza, selecione um número válido.")
			U.aguarde(800)
			limpa()
		}
		
		} enquanto(sistema_auxiliar == verdadeiro) // Fim do SISTEMA AUXILIAR


		// Sistema administrativo
		se(acesso_admin == verdadeiro){
			A
		}
	} enquanto(sistema_global == verdadeiro)// Fim do sistema GLOBAL
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2298; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */