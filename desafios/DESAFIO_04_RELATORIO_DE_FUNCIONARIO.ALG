algoritmo "Desafio_04_relatorio_de_funcionario"
// Disciplina : L�gica, Computa��o e Algoritmos [22E1_1] 
// Professor: Elbert 
// Fun��o : 
// Autor : Bruno Correia
// Data : 02/02/2022
// Se��o de Declara��es

//Receba o nome, o sobrenome, a idade, o sal�rio e o desconto do funcion�rio.
//Exiba a seguinte frase: "O funcion�rio aaa bbb nasceu em ccc e ganha R$ddd". Onde:
//aaa � o nome do funcion�rio e bbb � o sobrenome;
//ccc � o ano de nascimento do funcion�rio;
//ddd � o sal�rio l�quido = sal�rio - desconto.

      funcao calculaIdade() : inteiro
      inicio
            retorne 2022 - idade
      fimfuncao

      funcao calculaSalario() : real
      inicio
            retorne salario-desconto
      fimfuncao

      procedimento impressao()
      inicio
     	      escreva("O funcion�rio ",nome," ",sobrenome," nasceu em",calculaIdade()," e ganha R$",calculaSalario())
      fimprocedimento

var
	nome: caracter
	sobrenome: caracter
	idade: inteiro
 	salario: real
	desconto: real

inicio

	escreva("Digite o nome: ")
	leia (nome)

	escreva("Digite o sobrenome: ")
	leia (sobrenome)

	escreva("Digite a idade: ")
	leia (idade)

	escreva("Digite o sal�rio: ")
	leia (salario)

	escreva("Digite o desconto: ")
	leia (desconto)

   impressao()

fimalgoritmo