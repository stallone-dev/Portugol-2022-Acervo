/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 08/06/22
 
    ===================== Nível 2 - Exercício 08 =====================

    => Uma locadora de carros precisa calcular o preço de seus serviços.
    Para isso, definiu que seus carros serão divididos em 3 faixas:
        => Padrão = R$ 90,00  p/dia
        => Luxo   = R$ 120,00 p/dia 
        => VIP    = R$ 200,00 p/dia
    => Além da diária, o cliente paga p/km percorrido acima de 100km.

    => Faça um algoritmo que leia o tipo de carro alugado, por quantos
    dias foi alugado e quantos km percorreu.

    => Calcule o valor total a ser pago e mostre, em detalhes, cada valor 
    de acordo com a tabela a seguir:
        => Até 100km    = Sem taxa adicional
        => Até 300km    = R$ 0,30 p/km
        => Acima disso  = R$ 0,50 p/km

    ==================================================================
*/

programa 
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio() 
	{
		/*
			Nessa altura dos exercícios, você deve estar bem fundamentado
		 	com as táticas para resolução desse tipo problema:
	 		Saber que precisa separar as variáveis antes de calcular
	 		o valor final, bem como utilizar passos intermediários bem
	 		definidos e demarcados, é fundamental nessa altura dos exercícios.
		 */

		// Declarando as variáveis autodescritivas
		inteiro tipo_carro, dias_alugados
		
		inteiro km_percorrido, km_limite_gratuito, km_limite_padrao

		real carro_padrao, carro_luxo, carro_VIP
		
		real preco_diaria=0.0, preco_km, valor_total


		// Atribuindo valores às variáveis de demarcação
		carro_padrao = 90.0
		carro_luxo   = 120.0
		carro_VIP    = 200.0
		km_limite_gratuito = 100
		km_limite_padrao   = 300


		// Perguntando ao usuário
		escreva("====== Boas-vindas à locadora UmaPechincha ======\n\n")
		escreva("Por gentileza, selecione o tipo de carro que você deseja: \n[1] - Padrão \n[2] - Luxuoso \n[3] - VIP\n\nSua escolha: ")
		leia(tipo_carro)

		escreva("\nPor quantos dias você pretende alugar? ")
		leia(dias_alugados)
		
		escreva("\nQuantos KM você pretende percorrer? ")
		leia(km_percorrido)


		// Análises condicionais:
		// Selecionando qual o preço da diária
		escolha(tipo_carro){
			caso 1:
			preco_diaria = carro_padrao
			pare

			caso 2:
			preco_diaria = carro_luxo
			pare

			caso 3:
			preco_diaria = carro_VIP
			pare
		}

		// Determinando faixa de preço para quilometragem
		se(km_percorrido <= km_limite_gratuito){
			
			preco_km = 0.0
			
		} senao se(km_percorrido <= km_limite_padrao){

			preco_km = 0.3
			km_percorrido -= km_limite_padrao
			
		} senao {

			preco_km = 0.5
			km_percorrido -= km_limite_padrao
		}


		// Realizando cálculos finais
		preco_diaria = preco_diaria * dias_alugados
		preco_km 	   = preco_km * km_percorrido		
		valor_total  = preco_diaria + preco_km


		// Exibindo o resultado
		limpa()

		escreva("O valor total a ser pago é: R$ ", Mat.arredondar(valor_total,2))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2697; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */