/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 02/06/2022
 
    ===================== Nível 1 - Exercício 05 =====================

    Já percebeu como os resultados têm saído cheio de casas decimais?
    Por exemplo: Desconto em reais = R$ 2709.8543999999997

    Não é muito bonito ver um resultado assim, acaba poluindo muito
    a tela do usuário. Para resolver isso, vamos dar um pulinho na
    biblioteca de matemática e pegar o comando "arredondar"

    Sua missão é: 
    		-- Visite a página de "Ajuda" do Portugol
    		-- Vá em Linguagem Portugol => Bibliotecas
    		-- Leia sobre como incluir bibliotecas
    		-- Inclua a biblioteca Matemática e dê o apelido de " Mat "
    		
    Com a biblioteca incluída, experimente arredondar valores reais!
    Se estiver com o apelido " Mat ", o comando será: 

    		Mat.arredondar([valor_real], [casas_decimais])

    	Exemplo: 	 Mat.arredondar( 2709.8543999999997, 2)
    	Resultado: " 2709.85 "
    
    ==================================================================
*/

programa 
{	
	// Geralmente a biblioteca é incluída aqui, logo no começo do programa
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{

	real valor1, valor2, divisao, resultado_arredondado
	inteiro casas_decimais

	escreva("Qual o valor 1? ")
	leia(valor1)

	escreva("Qual o valor 2? ")
	leia(valor2)

	divisao = valor1 / valor2


	escreva("Quantas casas decimais você quer ver? ")
	leia(casas_decimais)

	resultado_arredondado = Mat.arredondar(divisao, casas_decimais)

	/*
	  Ao utilizar a biblioteca "Matematica.arredondar()" estamos definindo 
	  um novo valor em vez de algo somente visual, caso algo seja calculado
	  utilizando esse valor arredondado, terá um resultado levemente diferente do normal.
	*/

	escreva("\n",valor1, " / ", valor2, " = ",resultado_arredondado)
		
	}
}