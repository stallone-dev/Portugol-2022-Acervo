/*
    ========================== Informações ===========================
    
    Inspiração	- Curso em vídeo: Curso de Algoritmo (2014)
    
    Autor original		- Gustavo Guanabara
    Autor da refatoração	- Stallone L. de Souza

    Atualizado em: 01/06/2022
 
    =================== Nível 0 - Exercício FINAL ====================

    Para finalizar esse nível, o exercício será um pequeno dever de casa:

    Vá na interface inicial do Portugol e clique no botão "Ajuda"
    Vá em => Linguagem Portugol => Tipos

    Leia um pouco sobre os tipos de dados que o Portugol aceita, as famosas
    Variáveis que tanto se fala nas linguagens.

    Explore um pouco, experimente, divirta-se!

    Na pasta RESPOSTAS, desse exercício aqui, você verá exemplos de cada
    tipo de variável, com anotações sobre cada uma.
    
    ==================================================================
*/

programa 
{
	funcao inicio()
	{

	// EXEMPLOS DE USO DOS DIFERENTES TIPOS DE DADOS

	// CARACTER = somente uma letra ou número, entendido aqui como letra
	// Não é muito utilizado, porém é uma forma de dados PRIMITIVOS
	caracter letra

	escreva("[CARACTER]\n")
	escreva("Qual sua letra favorita? ")
	leia(letra)
	escreva("Eu não gosto da letra ", letra, "prefiro a letra S\n")
	separador()


	// CADEIA = uma palavra inteira ou conjunto de palavras
	// Em outras linguagens normalmente é chamado de "STRING"
	cadeia palavra

	escreva("[CADEIA]\n")
	escreva("Qual nome você daria para um gato arco-iris? ")
	leia(palavra)
	escreva(palavra, "! Que nome engraçado, que tal NEONCAT?\n")
	separador()


	// INTEIRO = um número inteiro, sem casas decimais
	inteiro idade

	escreva("[INTEIRO]\n")
	escreva("Qual a idade do seu dinossauro? ")
	leia(idade)
	escreva("Nossa! Ele tem mesmo ",idade," anos?\n")
	separador()


	// REAL = um número com casas decimais
	real preco_da_passagem
	
	escreva("[REAL]\n")
	escreva("Qual o preço da passagem de ônibus na sua cidade?\n[Use '.' em vez da vírgula] ")
	leia(preco_da_passagem)
	escreva("Cuidado, ela pode aumentar em 50 centavos!\n")
	separador()


	// LÓGICO = representa um valor verdadeiro OU falso, muito utilizado para comparar as coisas
	// Será muito útil quando entrar na parte de "Desvio Condicional"
	logico maior_que_stallone
	real altura_stallone = 1.81, altura_usuario
	
	escreva("[LÓGICO]\n")
	escreva("Qual sua altura? ")
	
	leia(altura_usuario)
	
	se(altura_usuario >= altura_stallone){
		escreva("Você é mais alto que Stallone!\n")	
		
	} senao {
		escreva("Você é mais alto que um pônei!\n")
		
	}
	}

	// VAZIO = refere-se a um tipo especial de valor, aplicado às funções
	// Esse valor significa que ao executar a função, ela não deverá ter
	// um resultado a retornar, mas sim fazer o que precisa e finalizar.
	
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