algoritmo "Desafio_01_atribuicao_de_variaveis"
// Disciplina : L�gica, Computa��o e Algoritmos [22E1_1] 
// Professor: Elbert 
// Autor : Bruno Correia
// Data : 02/02/2022
// Se��o de Declara��es
var
	a: inteiro
	b: inteiro
	temp : inteiro

inicio

	a <- 10
	b <- 20
	escreval ("Valor da variavel a �",a)
	escreval ("Valor da variavel b �",b)

	temp <- a
	a <- b
	b <- temp

	escreval (" ")
	escreval ("Valor da variavel a agora �",a)
	escreval ("Valor da variavel b agora �",b)

fimalgoritmo