algoritmo "Desafio_01_atribuicao_de_variaveis"
// Disciplina : Lógica, Computação e Algoritmos [22E1_1] 
// Professor: Elbert 
// Autor : Bruno Correia
// Data : 02/02/2022
// Seção de Declarações
var
	a: inteiro
	b: inteiro
	temp : inteiro

inicio

	a <- 10
	b <- 20
	escreval ("Valor da variavel a é",a)
	escreval ("Valor da variavel b é",b)

	temp <- a
	a <- b
	b <- temp

	escreval (" ")
	escreval ("Valor da variavel a agora é",a)
	escreval ("Valor da variavel b agora é",b)

fimalgoritmo