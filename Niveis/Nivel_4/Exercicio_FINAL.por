/*
    Autor       - Stallone L. de Souza
    Atualizado em: 09/06/22
 
    =================== Nível 4 - Exercício FINAL ====================
    
    Eu realmente espero que tenha conseguido abstrair os Vetores até aqui!
    A aplicação deles pode não ter parecido muito útil, eu entendo, no
    Portugol a limitação de Tipos acaba por cortar parte do potencial dessa
    incrível ferramenta.

    Mesmo assim, vamos ao exercício final:

    => Em uma sexta-feira, o setor Contábil lhe pediu para fazer uma
    listagem de todas as Notas Fiscais que recuperaram ICMS nos últimos
    10 dias do mês. Para isso eles lhe dão uma planilha com os dados 
    das notas fiscais pagas até então. (Já inclusa no exercício)
    
    => A partir dela, querem que você apresente:
        => Quantas notas recuperaram ICMS.
        => Qual a média e o desvio padrão do ICMS recuperado.
        => Quanto foi abatido com essa recuperação em relação
        ao valor total pago nas notas.
        => Qual foi o fornecedor do qual mais se recuperou ICMS.

    Dica: Não congele diante do desafio, pense com calma quais elementos
          você realmente precisa analisar, como você pode analisá-los
          em etapas e como pode apurar o resultado final.

    ==================================================================
*/

programa 
{
	funcao inicio() 
	{

        inteiro notas_fiscais[] = { 119,101,101,95,131,27,50,58,8,71,51,193,67,184,70,121,27,15,49,37,164,50,122,48,92,75,95,79,126,32,145,191,70,199,116,36,175,191,65,117,23,165,58,179,119,5,6,2,73,135 }

        inteiro dias[] = { 13,15,14,10,12,28,4,8,19,10,27,14,7,21,16,15,3,13,11,19,1,25,17,9,5,19,14,13,17,10,30,3,22,27,9,4,20,14,16,16,20,19,10,22,12,15,15,24,26,19 }

        cadeia fornecedores[] = { "Francisco Correia","Marcelo Correia","Vitor Gabriel Teixeira","Sr. André Cunha","Maitê Campos","Marcelo Correia","Marcelo Correia","Enzo Sales","Pietra Silveira","Kaique Almeida","Francisco Correia","Enzo Sales","João Felipe Araújo","Ana Beatriz Lima","Carolina da Rocha","Ana Sophia Sales","Luigi Fernandes","Marcelo Correia","Ana Beatriz da Costa","Ana Laura Pires","João Felipe Araújo","Enzo Sales","Vicente Santos","Ana Beatriz da Costa","Maitê Campos","Sr. André Cunha","Luiz Miguel da Costa","Luigi Fernandes","Kaique Almeida","Vicente Santos","Maitê Campos","Ana Sophia Sales","Ana Laura Pires","Luiz Miguel da Costa","João Felipe Araújo","Ana Beatriz Lima","Ana Sophia Sales","João Felipe Araújo","Marcelo Correia","Thales Santos","Thales Santos","Luiz Miguel da Costa","Luiz Miguel da Costa","Enzo Sales","Ana Sophia Sales","Ana Beatriz Lima","Enzo Sales","Luiz Miguel da Costa","Ana Beatriz Lima","Francisco Correia" }

        inteiro valor_nfs[] = { 1020,1531,1180,745,1232,2870,2576,1225,2152,2796,1367,2892,1087,309,1519,234,2378,327,1377,1173,563,1830,2880,803,907,443,1488,2288,942,772,213,2001,2464,2283,875,485,2212,2841,1095,2757,2915,1125,535,553,2457,2941,950,1452,2043,1040 }

        real ICMS[] = { 183.6,0.0,212.4,134.1,221.76,0.0,0.0,0.0,387.36,503.28,246.06,520.56,195.66,55.62,273.42,42.12,0.0,58.86,247.86,0.0,101.34,329.4,0.0,144.54,163.26,79.74,267.84,411.84,169.56,0.0,38.34,360.18,443.52,410.94,157.5,87.3,0.0,511.38,197.1,0.0,524.7,202.5,96.3,0.0,0.0,529.38,171.0,261.36,0.0,187.2 }

	}
}