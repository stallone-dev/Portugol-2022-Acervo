/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    ===================== Nível 1 - Exercício 05 =====================

    => Escreva um algoritmo que calcule o salário de alguém com base em:
        => Quanto é o salário-hora
        => Quantas horas trabalha por dia
            => Perguntar se teve hora-extra (total)
        => Quantos dias trabalhou no mês

    => Mostre para o usuário o resultado final arredondado.
    
    ==================================================================
*/

programa 
{
    inclua biblioteca Matematica --> Mat

	funcao inicio() 
	{

        /*
            Aqui o nosso objetivo é:
                -- Converter o dados de entrada em uma saída única e simples
                -- Mostrar esse resultado de forma precisa com 2 casas decimais
        */

        // Declarando variáveis
        inteiro dias_trabalhados, horas_diarias, horas_extras

        real salario_hora, salario


        // Perguntando ao usuário
        escreva("Vamos calcular o seu salário!\n\n")
        
        escreva("Quantos dias você trabalhou no mês? [Adicione os fins-de-semana também] ")
        leia(dias_trabalhados)
        
        escreva("Quantas horas você trabalhou por dia? ")
        leia(horas_diarias)
    
        escreva("Fez quantas horas-extras? ")
        leia(horas_extras)
        
        escreva("Quanto vale o seu salário-hora? ")
        leia(salario_hora)
        
        
        // Calculando o resultado
        salario = ( (dias_trabalhados * horas_diarias) + horas_extras ) * salario_hora
        

        // Exibindo o resultado
        limpa()
        escreva("Seu salário será: R$ ", Mat.arredondar(salario,2))

        /*
            Observe no cálculo o uso dos parênteses " ( ) ": na prograamção, assim
            como na matemática, eles representam uma ordem de prioridade na hora de
            realizar o cálculo.
            
            Essa ordem de prioridade é do mais interno para o mais externo,
            seguido da a ordem das operações [ * e / antes de + e - ]
            
            Se não usássemos os parênteses, aconteceria o seguinte:
                => A * B + C * D
                => (A * B) + (C * D)
                
                => 30 * 8 + 10 * 5.20
                => (30 * 8) + (10 * 5.20)
                => 240 + 52
                => 292
                
            O que queremos aqui é:
                => ((A * B) + C) * D
                
                => ((30 * 8) + 10) * 5.20
                => (240 + 10) * 5.20
                => 250 * 5.20
                => 1300
            
            Receber R$ 292,00 no lugar de R$ 1300,00 não é muito agradável, concorda?
        */

	}
}