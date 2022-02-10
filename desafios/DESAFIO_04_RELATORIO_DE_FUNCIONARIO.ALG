algoritmo "Desafio_04_relatorio_de_funcionario"
// Função : 
// Autor : Bruno Correia
// Data : 02/02/2022
// Seção de Declarações

var
	nome: caracter
	sobrenome: caracter
	idade: inteiro
	ano: inteiro
	salario: real
	desconto: real

inicio

	escreva("Digite o nome: ")
	leia (nome)

	escreva("Digite o sobrenome: ")
	leia (sobrenome)

	escreva("Digite a idade: ")
	leia (idade)

	escreva("Digite o salário: ")
	leia (salario)

	escreva("Digite o desconto: ")
	leia (desconto)

	ano <- 2022

	escreva("O funcionário ",nome," ",sobrenome," nasceu em",ano-idade," e ganha R$",salario-desconto)


fimalgoritmo