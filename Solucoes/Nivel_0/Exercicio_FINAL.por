/*
    Inspiração  - Curso em Vídeo: Curso de Algoritmo (2014)
    Autor       - Stallone L. de Souza
    Atualizado em: 03/06/22
 
    =================== Nível 0 - Exercício FINAL ====================

    => Vá na interface inicial do Portugol e clique no botão "Ajuda"
    => Vá em => Linguagem Portugol => Tipos
    => Leia um pouco sobre os tipos de dados que o Portugol aceita
    => Experimente eles, divirta-se!
    
    ==================================================================
*/

programa 
{
	funcao inicio()
	{

	// EXEMPLOS DE USO DOS DIFERENTES TIPOS DE DADOS

	/*
	   	CARACTER = somente uma letra ou número, entendido aqui como letra
	   	Não é muito utilizado, porém ajudará quando chegar em "Matrizes"
	*/
	
	caracter letra

	escreva("[CARACTER]\n")
	escreva("Qual sua letra favorita? ")
	leia(letra)
	escreva("Eu não gosto da letra ", letra, "prefiro a letra S\n")
	separador()

// =====================================================================

	/* 
		CADEIA = uma palavra inteira ou conjunto de palavras
		Em outras linguagens normalmente é chamado de "STRING"
	*/

	cadeia palavra

	escreva("[CADEIA]\n")
	escreva("Qual nome você daria para um gato arco-iris? ")
	leia(palavra)
	escreva(palavra, "! Que nome engraçado, que tal NEONCAT?\n")
	separador()

// =====================================================================

	// INTEIRO = um número inteiro, sem casas decimais

	inteiro idade

	escreva("[INTEIRO]\n")
	escreva("Qual a idade do seu dinossauro? ")
	leia(idade)
	escreva("Nossa! Ele tem mesmo ",idade," anos?\n")
	separador()

// =====================================================================

	/*
		REAL = um número com casas decimais
		ATENÇÃO: Em Portugol, e na maioria das linguagens, o decimal fica
		depois do ponto ".", não é utilizada a vírgula "," em números.

		Ex.: R$ 1.215,17  ==  1215.17
	*/

	real preco_da_passagem
	
	escreva("[REAL]\n")
	escreva("Qual o preço da passagem de ônibus na sua cidade?\n[Use '.' em vez da vírgula] ")
	leia(preco_da_passagem)
	escreva("Cuidado, ela pode aumentar em 50 centavos!\n")
	separador()

// =====================================================================

	/*
		LÓGICO = representa um valor verdadeiro OU falso, muito utilizado
		para comparar duas coisas entre si.
		Será muito útil quando entrar na parte de "Desvio Condicional"

		Ex.: (Carro == Moto) == FALSO
			 (Ferrari == Carro + Luxo) == VERDADEIRO 
	*/ 

	logico maior_que_stallone
	real altura_stallone = 1.81, altura_usuario
	
	escreva("[LÓGICO]\n")
	escreva("Qual sua altura? ")
	
	leia(altura_usuario)
	
	se(altura_usuario >= altura_stallone)
	{
		escreva("Você é mais alto que Stallone!\n")	
		
	} senao {

		escreva("Você é mais alto que um pônei!\n")

	}
	}

// =====================================================================

	/*
		VAZIO = refere-se a um tipo especial de valor, aplicado às funções
		Esse valor significa que ao executar a função, ela não deverá ter
	 	um resultado a retornar, mas sim fazer o que precisa e finalizar.

		Esse tipo de elemento será matéria do Nível 5
	*/
	
	funcao vazio separador()
	{
		escreva("==================================================\n")	
		retorne 
	}

	/* 
	  Há outras formas de dados, como VETORES e MATRIZES, porém elas não
	  cabem a esse momento, são matérias que virão mais a frente.
	*/
	
}