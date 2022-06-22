/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
    
    ===================== Nível 3 - Exercício 02 =====================
    
    => Escreva um algoritmo que leia um número inteiro maior que 0 e 
       faça:
         => Uma contagem de 0 até esse número
         => A mesma contagem, só que de 2 em 2
         => A mesma contagem, só que multiplicando o número atual por 3
         => A mesma contagem, só que cada vez que contar, multiplicará
         o número atual + 2 por ele mesmo

   => Mostre O resultado final tabulado e em linhas distintas.

   Ex.:  0..1..2..3..4
         0..2..4
         0..3..6..9..12
         0..3..8..15..24
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
		/*
		 	Para fins de praticidade, irei priorizar o método "para", uma vez que será
		 	o principal a ser utilizado em cenários reais.
		 	Lembrando:
		 		Para( contador ; critério ; fator de crescimento ou decrescimento do contador){}
		 		Para( inteiro c = 0 ; c < 10 ; c++){}
		 */

		inteiro entrada, contador

		escreva("Digite um número maior que 0: ")
		leia(entrada)


		// Parte 1: contagem simples
		escreva("Contando até ",entrada,": \t\t\t\t\t\t")
		
		para(contador = 0; contador <= entrada; contador++){
		 	se(contador < entrada){
		 		escreva(contador,"..")
		 	} senao {
		 		escreva(contador, "!\n")
		 	}
		}


		// Parte 2: contagem de 2 em 2 (observe o fator de incremento)
		escreva("Contando de 2 em 2 até ",entrada,": \t\t\t\t\t")
		
		para(contador = 0; contador <= entrada; contador += 2){
		 	
		 	se(contador < entrada){
		 		escreva(contador,"..")
		 	} senao {
		 		escreva(contador, "!")
		 	}
		}
		escreva("\n")


		// Parte 3: contagem simples + multiplicação por 3 (observe o "escreva" dentro do laço)
		escreva("Contando até ",entrada," e multiplicando por 3: \t\t\t\t")
		para(contador = 0; contador <= entrada; contador++){
		 	
		 	se(contador < entrada){
		 		escreva(contador * 3,"..")
		 	} senao {
		 		escreva(contador * 3, "!")
		 	}
		}
		escreva("\n")


		// Parte 4: Contagem simples + resultado incremental (observe que há uma variável auxiliar declarada dentro do loop)
		escreva("Contando até ",entrada,", somando 2 e multiplicando pelo contador: \t")
		para(contador = 0; contador <= entrada; contador++){

			inteiro valor = (contador + 2) * contador
		 	
		 	se(contador < entrada){
		 		escreva(valor,"..")
		 	} senao {
		 		escreva(valor, "!\n")
		 	}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */