/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    ===================== Nível 2 - Exercício 04 =====================

    => Escreva um algoritmo que pergunte ao usuário quanto ele pagou em
    um belo pote de 250g de açaí, qual horário que ele comprou e quando
    pretende comê-lo.

    => Se ele pagou mais que R$ 8,00, mostre uma mensagem dizendo que ele
    pagou caro, se não, mostre que saiu no lucro, com a diferença a mostra
    
    => Se a diferença entre o horarío de compra e o de consumo for maior
    que 3 horas, informe que o açaí estará congelado, se não for, mostre:
    "No capricho!"

    ==================================================================
*/

programa 
{	
	inclua biblioteca Matematica --> Mat
	funcao inicio() 
	{
		// Declarando variáveis autodescritivas
		inteiro horario_compra, horario_consumo
		
		real valor_acai


		// Perguntando ao usuário
		escreva("Quanto você pagou nesse delicioso açaí em suas mãos? ")
		leia(valor_acai)

		escreva("Que horas foi que você comprou? ")
		leia(horario_compra)

		escreva("Que horas pretende comer? ")
		leia(horario_consumo)

		limpa()

		
		// Análises comparativas
		// 1 - Avaliando preço do açaí
		se(valor_acai > 8.0){
			
			escreva("Cara, pagou meio caro nisso aí, não?")
			
		} senao {
			
			escreva("Que pechincha! Onde é a açaiteria?...")
			
		}

		// 2 - Avaliando tempo de congelamento
		se(horario_consumo - horario_compra >= 3){

			escreva("Vish, vai virar picolé esse açaí aí!")
			
		} senao {

			escreva("Melhor horário, impossível!")
			
		}

		// São quase 00h enquanto escrevo essa solução, estou capengando de sono.    
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */