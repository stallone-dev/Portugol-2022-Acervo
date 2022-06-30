/*
    Fonte       - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Gustavo Guanabara
    Atualizado em: 30/06/22
    
    ===================== Nível 4 - Exercício 02 =====================

    Vamos agora atribuir valores ao vetor sem declará-los:

    => Crie um vetor de tamanho 10 que receba só números inteiros
    => Faça um laço de repetição que coloque um valor em cada posição
        => O valor deve ser de 5 em 5 números
    
    Ex.: [5,10,15,20...]

    => Em seguida mostre o valor de cada posição, como no exercício
    anterior.
      
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
		inteiro vetor_numerico[10]
		
		para(inteiro posicao = 0; posicao < 10; posicao++){
			
			vetor_numerico[posicao] = (posicao + 1) * 5

			escreva("Posição ",posicao," = ",vetor_numerico[posicao],"\n")
		}

		/*
		 * 	Aqui, primeiro foi declarado o vetor com seu tamanho [10] 
		 * 	e somente depois foi atribuído algum valor.
		 * 	
		 * 	No Portugol é possível fazer isso também através de uma constante,
		 * 	como mostrarei abaixo:
		 */
		 
		limpa()
		const inteiro Tamanho = 10
		inteiro novo_vetor_numerico[Tamanho]

		para(inteiro posicao = 0; posicao < Tamanho; posicao++){

			novo_vetor_numerico[posicao] = (posicao + 1) * 5
			
			escreva("Posição ",posicao," = ",vetor_numerico[posicao],"\n")
		}

		/*
		 * 	Aqui a CONSTATNE "Tamanho" substitui o valor "10" antigo
		 * 	Isso torna o código mais flexível.
		 * 	
		 * 	Uma constante é um valor que não pode ser alterado, ele é fixo,
		 * 	cravado no código como a raiz de um pé de manga é no solo.
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
 * @SIMBOLOS-INSPECIONADOS = {vetor_numerico, 26, 10, 14}-{posicao, 28, 15, 7}-{posicao, 47, 15, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */