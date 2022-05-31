/*
    Nível 0 - Exercício 05
    Fonte:  - Curso em vídeo
    ===================================================================
    
    Escreva um programa que receba uma distância em Metros e converta em:
        1 - Milímetros  (mm)
        2 - Centímetros (cm)
        3 - Quilômetros (km)
        4 - Passos de 30 cm
        
    Mostre depois a seguinte mensagem na tela:
    
    "Resultados:"
    "[METROS] metros é = [MM] mm" 
    "[METROS] metros é = [CM] cm" 
    "[METROS] metros é = [KM] km" 
    "[METROS] metros é = [PASSOS] passos de 30cm" 

    Dica: Números inteiros não são como números reais.
    
          Conversão entre metros, centímetros e quilômetros são
          potências de 10, como podemos representar?
    
    ===================================================================

*/

programa 
{
	funcao inicio() 
	{
	real metros, mm, cm, km, passos
	
	escreva("Distância em metros: ")
	leia(metros)
	
	mm      = metros * 10*10*10
	cm      = metros * 10*10
	km      = metros / (10*10*10)
	passos  = (metros * 10) / 30
	
	escreva("Resultados:\n")
	
	escreva(metros, " metros é = ", mm, "mm\n")
	escreva(metros, " metros é = ", cm, "cm\n")
	escreva(metros, " metros é = ", km, "km\n")
	
	escreva(metros, " metros é = ", passos, "passos de 30cm\n")
		
	}
}
