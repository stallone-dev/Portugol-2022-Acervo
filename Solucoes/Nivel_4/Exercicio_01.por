/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 30/06/22
    
    ===================== Nível 4 - Exercício 01 =====================
    ======================== Etapa de Vetores ========================

    Boas-vindas ao nível 4! Aqui trabalharemos os conceitos de Vetores
    e Matrizes, elementos centrais da programação a nível de dados.

    Para começar, quero ressaltar que entendo a dificuldade de muita
    gente nessa etapa. A ideia de Vetores e Matrizes, como são trabalhadas
    na programação, é o ponto de maior dificuldade da maioria das pessoas.

    Por isso, recomendo MUITO que você assista os vídeos recomendados, leia
    os exemplos e tente reconstruir alguns deles. Vetores e Matrizes não
    são monstros, eles são uma forma precisa de realizar um trabalho com
    segurança e possibilidade de consulta, o que é vital em muitas situações.

    Agora sim, ao primeiro exercício:
      
    => Crie um vetor de 10 posições [0 a 9] e preencha cada um deles
    com um número. Depois, utilizando o laço "Para", exiba o valor que
    está em cada posição do vetor.

    Ex.: inteiro numeros[] = [5,4,3,2,9...]
         Posição 0 = 5
         Posição 1 = 4
         Posição 2 = 3
         Posição 3 = 2
         Posição 4 = 9...
      
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

		inteiro numeros[] = {5,4,3,2,9,8,7,6,5,4,3}

		para(inteiro posicao = 0; posicao < 10; posicao++){

			escreva("Posição ", posicao ," = ", numeros[posicao],"\n")
		}

		/*
		 * 	Agora que estamos no nível 4 vou fazer bem menos comentários.
		 * 	
		 * 	Observe que declaramos uma variável inteira com o símbolo especial " [] " ao lado
		 * 	isso significa que essa variável vai assumir a propriedade de VETOR
		 * 		Um vetor é, essencialmente, um conjunto de variáveis
		 * 		Nele você pode inserir vários valores da mesma forma que faria em uma variável
		 * 		
		 * 		A única limitação é que todos os valores devem ser do mesmo tipo
		 * 			OBS.: Em linguagens modernas como JavaScript e Python essa limitação não existe.
		 * 			
		 * 	Há duas coisas importantes a se saber:
		 * 		Quando você decara um número dentro dos colchetes: ex[10]
		 * 		significa que você está "alocando" 10 posições dentro do vetor
		 * 		
		 * 		Quando deixa vazio: ex[], significa que serão alocados valores
		 * 		ao vetor, e estes precisam ser declarados de 2 modos:
		 * 			Ou literalmente: ex[] = {1,2,3}
		 * 			
		 * 			Ou interativamente: 
		 * 				inteiro ex[10]
		 * 				para(inteiro c = 0; c < 10; c++){
		 * 					ex[c] = "[valor qualquer]"
		 * 				}
		 * 				
		 * 		No caso interativo é necessário declarar qual o tamanho máximo do vetor.
		 * 		Em outras linguagens de programação esse passo geralmente não é necessário.
		 */

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 120; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */