/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 05 =====================

    => Escreva um algoritmo que calcule a área de uma parede (m²).
        => Calcule quantas latas de tinta serão necessários
            => Considere que 1 lata rende 25m²
        => Calcule quanto, em reais (R$), custará essa pintura
            => Pergunte o preço da lata

    => Mostre para o usuário:
        => Quantos m² tem de área
        => Quantas latas de tinta precisará (Pode ter decimais)
        => Quanto custará a pintura
    
    ==================================================================
*/

programa 
{
    inclua biblioteca Matematica --> Mat

	funcao inicio() 
	{

        /*
            Os objetivos aqui serão:
                -- Receber do usuário uma ALTURA e uma LARGURA
                -- Converter em m²
                -- Calcular quantas lantas de tinta precisará e o valor total
        */

        // Declarando variáveis
        real altura, largura, preco_lata, rendimento_lata
        
        real area, latas_necessarias, preco_total_pintura


        // Perguntando ao usuário
        escreva("Qual a altura da parede em metros?" )
        leia(altura)

        escreva("Qual a largura da parede em metros? ")
        leia(largura)

        escreva("Quanto é uma lata de tinta? ")
        leia(preco_lata)


        // Calculando valores
        rendimento_lata = 25

        area = largura * altura        

        latas_necessarias = area / rendimento_lata

        preco_total_pintura = latas_necessarias * preco_lata


        // Exibindo o resultado
        limpa()

        escreva("A parede tem ", Mat.arredondar(area,2) , " m² \n")
        escreva("O preço final do material será: R$ ", Mat.arredondar(preco_total_pintura,2) , "\n\n")

        escreva("Detalhes:\n")
        escreva("\tÁrea \t\t\t\t = ", Mat.arredondar(area,2) ,"\n")
        escreva("\tRendimento da lata \t = ", Mat.arredondar(rendimento_lata,2) ,"\n")
        escreva("\tLatas necessárias \t = ", Mat.arredondar(latas_necessarias,2) ,"\n")
        escreva("\tPreço da lata \t\t = ", preco_lata ,"\n")
        escreva("\tPreço final \t\t = ", Mat.arredondar(preco_total_pintura,2) ,"\n")

	}
}