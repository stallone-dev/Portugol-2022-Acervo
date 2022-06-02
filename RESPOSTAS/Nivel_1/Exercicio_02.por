/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    ===================== Nível 1 - Exercício 02 =====================

    Neste exercício iremos iniciar a prática de conversões e camadas de
    variáveis, lembre-se de cuidar bem dos nomes das variáveis e vamos lá:
    
    Escreva um programa que receba uma distância em METROS e converta em:
        1 - Milímetros  (mm)
        2 - Centímetros (cm)
        3 - Quilômetros (km)
        4 - Passos de 30 cm
        
    Mostre depois a seguinte mensagem na tela:
    
    "Conversões:"
    "[METROS] metros é = [MM] mm" 
    "[METROS] metros é = [CM] cm" 
    "[METROS] metros é = [KM] km" 
    "[METROS] metros é = [PASSOS] passos de 30 cm" 

    Dica: Números reais possuem sempre decimal, escritos com "." no lugar da ","
    		Separa em etapas, sempre!
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

	/*
	  Mais uma vez, vamos trabalhar com etapas de resolução, para facilitar as coisa
	  Neste caso:
	  	-- Declaração das variáveis com os nomes do que representam
	  	-- Realização dos cálculos sob a devida conversão
	  		-- Dessa vez, utilizar o parênteses " ( ) " para 
	  		   declarar bem o que deve ser cálculado primeiro
	  	-- Exibição dos resultados
	*/

	// Parte 1 - Declaração das variáveis
	real metros, mm, cm, km, passos_de_30cm
	/*
	   Observe que na variável dos Passos, foi declarado
	   exatamente o que ela deverá representar, separando as 
	   palavras pelo símbolo " _ " (underline)

	   O objetivo disso é criar uma forma rápida de identificar
	   o que deve ser feito com essa variável, reduzindo o esforço
	   posterior (depois de dias ou meses) de lembrar o que raios 
	   a variável significa, algo que faz parte do "Código Limpo".
	*/ 
	
	// Perguntando ao usuário
	escreva("Escreva uma distância em metros: ")
	leia(metros)


	// Parte 2 - Cálculos individuais
	/* 
	   OBS: Na matemática, geralmente se usam potências para converter números
	   por exemplo, de metros para milímetros, seria "M x 10³". 
	   
	   Na programação esse tipo de operação é representada, normalmente, por "M * 10**3"
	   com " ** " representado o ato de "elevar ao número".
	   
	   Contudo, nesta versão do Portugol (01/06/2022), não há essa simbologia programada.
	   Para fazer algo assim, precisamos usar a biblioteca de matemática, o que não vêm
	   ao caso nesse momento, ou escrever na mão mesmo a potência
	*/ 
	mm   = metros * (10*10*10)  
	cm   = metros * (10*10)	  // São utilizados parênteses " ( ) " para deixar claro o que será feito primeiro
	km	= metros / (10*10*10)
	
	passos_de_30cm  = cm / 30 // Aproveitando que a distância em centímetros já foi calculada


	// Parte 3 - Exibindo os resultados
	escreva("Resultados:\n")
	
	escreva(metros, " metros é = ", mm, " mm\n")
	escreva(metros, " metros é = ", cm, " cm\n")
	escreva(metros, " metros é = ", km, " km\n")
	escreva(metros, " metros é = ", passos_de_30cm, " passos de 30 cm\n")
		
	}
}