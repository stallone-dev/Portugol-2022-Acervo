/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 02/06/2022
 
    ===================== Nível 2 - Exercício 03 =====================

    Antes de irmos mais a fundo nas relações lógicas, vamos voltar um
    um pouco e usar uma outra ferramenta lógica: o Escolha-caso. 
    
    O exercício dessa vez será mais tranquilo, aproveite para usar bem
    a criatividade!

    Pergunte ao usuário qual o mês de aniversário dele [número],
    em seguida, utilize o Escolha-caso para escrever uma mensagem 
    personalizada para cada mês de aniversário.

    Dica: Ajuda => Linguagem Portugol => Estruturas de controle =>
    		=> Desvios condiconais => Escolha-caso
    
    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
		/*
		  Nossos objetivos são simples:
		  	-- Saber o nome e o mês de aniversário do usuário
		  	-- Escrever uma mensagem para cada mês
		*/

		// Parte 1 - Declaração das variáveis importantes
		inteiro mes


		// Parte 2 - Perguntando ao usuário
		escreva("Qual o seu mês de aniversário? [1 a 12] ")
		leia(mes)


		// Parte 3 - Desvio condicional Escolha-caso

		/*
		  A estrutura do Escolha-caso possui quatro elementos:
		  	-- Um avaliador condicional: 				" escolha([ELEMENTO]){}
		  	-- Um marcador de eventos possívels: 		" caso [POSSIBILIDADE]: "
		  	-- Um marcador de parada: 				" pare "
		  	-- E um caso-padrão para outras situações: 	" caso contrario: "
		  		-- O caso padrão não precisa do "pare"

		  A estrutura completa é assim:
		  	escolha([ELEMENTO])
		  	{
		  		caso [Possibilidade 1]: 
		  			[Código a ser executado]
		  		pare

		  		caso [Possibilidade 2]:
		  			[Código a ser executado]
		  		pare

		  		caso contrario:
		  			[Código-padrao a ser executado]
		  			[não necessita do comando "PARE"]
		  	}
		*/

		limpa()
		
		escolha(mes)
		{
			caso 1:
				escreva("Neste primeiro mês do ano, flores brancas voam aos céus \nJovens sorriem inspirados \nE velhos bebem pra dedéu!")
			pare

			caso 2:
				escreva("Em Fevereiro o carnaval vigora \nToca banda, toca festa, toca samba na escola \nSó não pode deixar de tocar a boa e velha viola.")
			pare

			caso 3:
				escreva("Meu caro de Março, o que digo a você? \nEspera um texto, um abraço, mas nada tenho a oferecer.")
			pare

			caso 4:
				escreva("Feliz primeiro de Abril! \nTem chocolate e bolo para todo mundo!")
			pare

			caso 5:
				escreva("Nos ventos de Maio, encontro-me aqui, \nHora a pensar, hora a refletir, \nSerá que um dia encontrarei um curso pra mim?")
			pare
			
			caso 6:
				escreva("Mês da festa junina no nordeste, que maravilha de época para comer comida boa que só o diacho!")
			pare
			
			caso 7:
				escreva("Julho, caro Julho, será você descendente de Cézar? \n...ou de Julius?")
			pare
			
			caso 8:
				escreva("Mês de Agosto, época dos Pais e dos Estudantes,\nEternos guerreiros itinerantes!")
			pare
			
			caso 9:
				escreva("Em Setembro comemoramos a vida e a alegria de viver!\nTambém é o mês em que ajudamos quem desta se perdeu, \nE os que daquela tentam se desfazer.")
			pare
			
			caso 10:
				escreva("A MELHOR ÉPOCA DO ANO!\nDIA DAS BRUXAS, DOCES, AVENTURAS DE HALLOWEEN!")
			pare
			
			caso 11:
				escreva("Se você mora no Brasil, Novembro é um péssimo mês para torrar a grana, \nSe mora lá fora, BLACK FRIDAY!")
			pare
			
			caso 12:
				escreva("Feliz Natal! Desejo tudo de bom para mim e para você, \nE também para todos que precisam de cobertores e comida como eu e você.")
			pare

			caso contrario:
				escreva("Então né... O mês ", mes," meio que não existe ainda, sabe?")
		}
		
	}
}