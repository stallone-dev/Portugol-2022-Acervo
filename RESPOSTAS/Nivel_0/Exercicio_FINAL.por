/*
    Nível 0 - Exercício FINAL
    Fonte:  - Curso em vídeo
    ===================================================================
    
    Para finalizar esse nível, o exercício será um pequeno dever de casa:

    Vá na interface inicial do Portugol e vá no botão "Ajuda"
    Vá em => Linguagem Portugol => Tipos

    Leia um pouco sobre os tipos de dados que o Portugol aceita, as famosas
    Variáveis que tanto são utilizadas.

    Explore um pouco, experimente, divirta-se!
    
    ===================================================================
*/

programa 
{
	funcao inicio()
	{

	// EXEMPLOS DE USO DOS DIFERENTES TIPOS DE DADOS

	// CARACTER = somente uma letra ou número, entendido aqui como letra
	caracter letra
	escreva("Qual sua letra favorita? ")
	leia(letra)
	escreva("Eu não gosto da letra ", letra, "prefiro a letra S\n\n")


	// CADEIA = uma palavra inteira ou conjunto de palavras
	cadeia palavra
	escreva("Qual nome você daria para um gato arco-iris? ")
	leia(palavra)
	escreva(palavra, "! Que nome engraçado, que tal NEONCAT?\n\n")


	// INTEIRO = um número inteiro, sem decimais
	inteiro idade
	escreva("Qual a idade do seu dinossauro? ")
	leia(idade)
	escreva("Nossa! Ele tem mesmo ",idade," anos?\n\n")


	// REAL = um número com casas decimais
	real preco_da_passagem
	escreva("Qual o preço da passagem de ônibus na sua cidade?\n[Use '.' em vez da vírgula] ")
	leia(preco_da_passagem)
	escreva("Cuidado, ela pode aumentar em 50 centavos!\n\n")


	// LÓGICO = representa um valor verdadeiro OU falso, muito utilizado para comparar
	logico maior_que_stallone
	
	real altura_stallone = 1.81, altura_usuario
	
	escreva("Qual sua altura? ")
	
	leia(altura_usuario)
	
	se(altura_usuario >= altura_stallone){
		escreva("Você é mais alto que Stallone!")	
		
	} senao {
		escreva("Você é mais alto que um pônei!")
		
	}
	}


	// VAZIO = refere-se a um tipo especial de valor, aplicado às funções
	// Esse valor significa que ao executar a função, ela não deverá ter
	// um resultado a retornar, mas sim fazer o que precisa e finalizar.
	
	funcao vazio imprimirDividas()
	{
		escreva("Banco, está na hora dos juros rolarem!")	
		retorne 
	}

}
