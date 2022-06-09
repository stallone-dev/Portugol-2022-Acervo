/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 09/06/22
 
    ===================== Nível 4 - Exercício 09 =====================

    Vamos apliar agora as matrizes em uma situação real:

    => Em uma sexta-feira, o setor Contábil lhe pediu para fazer uma
    listagem de todas as Notas Fiscais que recuperaram ICMS nos últimos
    10 dias do mês passado. Para isso eles lhe dão uma planilha com
    os dados das notas fiscais. (Já inclusa no exercício)
    
    => A partir delas, querem que você apresente:
        => Quantas notas recuperaram ICMS.
        => Qual a média e o desvio padrão do ICMS recuperado.
        => Quanto foi abatido com essa recuperação em relação
        ao valor total pago nas notas.
        
    => Além disso, querem que você apresente os resultados em ordem DECRESCENTE e tabulada.

    Dica: Não congele diante do desafio, pense com calma quais elementos
          você realmente precisa analisar, como você pode analisá-los
          em etapas e como pode apurar o resultado final.

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{
        cadeia notas_Fiscais[][] = 
        { 
            { 'NF', 'Emissão', 'Fornecedor', 'Valor', 'ICMS' },
            { 119, 'Dia 12', 'Francisco Correia', 1083, 194.94 },
            { 119, 'Dia 12', 'Francisco Correia', 1083, 194.94 },
            { 101, 'Dia 24', 'Marcelo Correia', 360, 64.8 },
            { 101, 'Dia 15', 'Vitor Gabriel Teixeira', 2097, 377.46 },
            { 95, 'Dia 3', 'Sr. André Cunha', 615, 110.7 },
            { 131, 'Dia 16', 'Maitê Campos', 2647, 476.46 },
            { 27, 'Dia 4', 'Marcelo Correia', 469, 84.42 },
            { 50, 'Dia 2', 'Marcelo Correia', 2605, 468.9 },
            { 58, 'Dia 5', 'Enzo Sales', 2794, 502.92 },
            { 8, 'Dia 25', 'Pietra Silveira', 2492, 448.56 },
            { 71, 'Dia 10', 'Kaique Almeida', 1706, 307.08 },
            { 51, 'Dia 3', 'Francisco Correia', 349, 62.82 },
            { 193, 'Dia 16', 'Enzo Sales', 400, 72 },
            { 67, 'Dia 9', 'João Felipe Araújo', 1410, 253.8 },
            { 184, 'Dia 24', 'Ana Beatriz Lima', 357, 64.26 },
            { 70, 'Dia 26', 'Carolina da Rocha', 2851, 513.18 },
            { 121, 'Dia 13', 'Ana Sophia Sales', 1830, 329.4 },
            { 27, 'Dia 22', 'Luigi Fernandes', 1089, 196.02 },
            { 15, 'Dia 16', 'Marcelo Correia', 1020, 183.6 },
            { 49, 'Dia 22', 'Ana Beatriz da Costa', 1144, 205.92 },
            { 37, 'Dia 23', 'Ana Laura Pires', 840, 151.2 },
            { 164, 'Dia 11', 'João Felipe Araújo', 1854, 333.72 },
            { 50, 'Dia 28', 'Enzo Sales', 618, 111.24 },
            { 122, 'Dia 29', 'Vicente Santos', 1302, 234.36 },
            { 48, 'Dia 16', 'Ana Beatriz da Costa', 1298, 233.64 },
            { 92, 'Dia 8', 'Maitê Campos', 623, 112.14 } 
        }

    
	}
}