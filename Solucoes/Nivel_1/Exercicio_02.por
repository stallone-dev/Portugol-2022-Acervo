/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 02 =====================

    => Escreva um programa que receba uma distância em METROS e converta em:
        => 1 - Milímetros  (mm)
        => 2 - Centímetros (cm)
        => 3 - Quilômetros (km)
        => 4 - Passos de 30 cm
        
    => Mostre depois a seguinte mensagem no resultado:
        => "Conversões:"
        => "[METROS] metros é = [MM] mm" 
        => "[METROS] metros é = [CM] cm" 
        => "[METROS] metros é = [KM] km" 
        => "[METROS] metros é = [PASSOS] passos de 30 cm" 
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	  Mais uma vez, vamos trabalhar com etapas de resolução.
	  Neste caso:
	  	-- Declarar as variáveis com nomes apropriados
		-- Perguntar ao usuário a distância em METROS
	  	-- Calcular as conversões
	  		-- Utilizar o parênteses " ( ) " para 
	  		   definir bem o que deve ser cálculado primeiro
			   em cada conversão
	  	-- exibir dos resultados
	*/

	// Parte 1 - Declaração das variáveis
	real metros, mm, cm, km, passos_de_30cm

	/*
		Observe que na variável dos PASSOS, foi declarado
		exatamente o que ela deverá representar, separando as 
		palavras pelo símbolo " _ " (underline)	

		O objetivo disso é criar uma forma rápida de identificar
		o que essa variável representa, reduzindo o esforço de lembrar 
		o que raios a variável significa
	*/ 
	
	// Parte 2 - Perguntando ao usuário
	escreva("Escreva uma distância em METROS: ")
	leia(metros)


	// Parte 3 - Calculando as variáveis
	mm   = metros * (10*10*10)  
	cm   = metros * (10*10)	  // São utilizados parênteses " ( ) " para deixar claro o que será feito primeiro
	km	= metros / (10*10*10)
	
	passos_de_30cm  = cm / 30 // Aproveitando que a distância em centímetros já foi calculada

	/* 
		OBS: Na matemática, geralmente se usam potências para converter números
		por exemplo, de METROS => MILÍMETROS, seria "Metros x 10³". 
	   
		Na programação esse tipo de operação é representada, normalmente, assim:
			"Metros * 10**3"
		com " ** " representado o ato de "elevar ao número tal".
	   
		Contudo, nesta versão do Portugol (06/2022), não há essa simbologia programada.
		Para fazer algo assim, precisamos usar a biblioteca de matemática, o que não vêm
		ao caso nesse momento.
	*/


	// Parte 3 - Exibindo os resultados
	limpa()
	escreva("Resultados:\n")
	
	escreva(metros, " m é = ", mm, " mm\n")
	escreva(metros, " m é = ", cm, " cm\n")
	escreva(metros, " m é = ", km, " km\n")
	escreva(metros, " m é = ", passos_de_30cm, " passos de 30 cm\n")
		
	}
}