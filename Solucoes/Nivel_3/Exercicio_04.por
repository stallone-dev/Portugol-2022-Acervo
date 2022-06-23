/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 08/06/22
 
    ===================== Nível 3 - Exercício 04 =====================

    Nesta parte 3, daremos enfoque ao laço "para", que será vez ou outra
    o mais importante laço a ser utilizado em seus códigos.

    => Desenvolva um algoritmo que leia um número qualquer e mostre a
    tabuada completa até o 20 desse número, utilizando o laço "para"

    Ex.: Digite um valor: 5
         5 x 1 = 5
         5 x 2 = 5
         5 x 5 = 25 ...

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

		/*
		 * 	Este exercício é bastante simples de resolver, mas quero
		 * 	aproveitar a natureza dele para trabalhar um conceito importante:
		 * 	
		 * 		O ESCOPO DE VARIÁVEL
		 * 		
		 * 	Um Escopo diz respeito ao "lugar" onde aquela variável pode trabalhar
		 * 	ou existir. Um escopo, no Portugol, é delimitado pelas chaves "{ }".
		 * 		Até então só trabalhamos no Escopo Geral, lugar onde todo o programa 
		 * 		existe. Nele as variáveis funcionam para todo o código.
		 * 		
		 * 			funcao inicio() { ESCOPO GLOBAL/GERAL/UNIVERSAL }
		 * 		
		 * 		Contudo, perceba que dentro de um laço também há chaves "{}", como no
		 * 		caso do "enquanto". Esse novo escopo é chamado de "Escopo Local".
		 * 			enquanto() { ESCOPO LOCAL }
		 * 		
		 * 		A diferença entre os dois é que o Escopo Local pode acessar e interferir
		 * 		no escopo Geral / Universal, mas não pode existir por si só fora do seu
		 * 		lugar de origem.
		 * 		
		 * 		Por exemplo: 
		 * 			ESCOPO GLOBAL { 
		 * 			
		 * 				variável_x = 1
		 * 				
		 * 				ESCOPO LOCAL {
		 * 					variável_local = 2
		 * 					
		 * 					variavel_x += 3
		 * 				}
		 * 			
		 * 			escreva(variável_x)		// resultado => 4
		 * 			escreva(variável_local)	// resultado => * ERRO *
		 * 			
		 * 			}
		 * 	
		 * 	A "variável_x" existe para todo o programa e pode ser alterada por qualquer um.
		 * 	Já a "variável_local" só existe dentro do Escopo Local onde foi criada, deixando
		 * 	de existir fora dele.
		 * 		
		 * 	Veja abaixo a utilização desse conceito na prática:
		 */

		 inteiro entrada

		 escreva("Digite um número: ")
		 leia(entrada)

			// Observe que existe uma variável no critério do "para"
			// Essa variável é local, só existe dentro do "para"
			
		 para(inteiro contador = 1; contador <= 20; contador++){

		 	inteiro resultado = entrada * contador
		 	// Essa daqui também, ela só existe aqui dentro, assim
		 	// que o laço for finalizado, deixará de existir.
		 	
		 	escreva(entrada, " x ", contador, " = ", resultado, "\n")
		 		
		 }

		 /*
		  * 	Essas variáveis "LOCAIS" servem como um apoio ao programa, facilitando
		  * 	a lógica do algoritmo.
		  * 	
		  * 	Se ainda estiver com dificuldade em visualizar isso, imagine que seu código
		  * 	é uma empresa, e cada parte dele é um setor.
		  * 		Conforme a empresa cresce, é necessário contratar mais colaboradores
		  * 		e especializá-los naquele setor.
		  * 		Em programação, é preciso dividir as etapas de solução e atribuir as
		  * 		variáveis locais à elas.
		  */
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */