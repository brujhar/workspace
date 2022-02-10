algoritmo "Desafio_04_relatorio_de_funcionario"
// Disciplina : Lógica, Computação e Algoritmos [22E1_1] 
// Professor: Elbert 
// Função : 
// Autor : Bruno Correia
// Data : 02/02/2022
// Seção de Declarações

//Receba o nome, o sobrenome, a idade, o salário e o desconto do funcionário.
//Exiba a seguinte frase: "O funcionário aaa bbb nasceu em ccc e ganha R$ddd". Onde:
//aaa é o nome do funcionário e bbb é o sobrenome;
//ccc é o ano de nascimento do funcionário;
//ddd é o salário líquido = salário - desconto.

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
     	      escreva("O funcionário ",nome," ",sobrenome," nasceu em",calculaIdade()," e ganha R$",calculaSalario())
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

	escreva("Digite o salário: ")
	leia (salario)

	escreva("Digite o desconto: ")
	leia (desconto)

   impressao()

fimalgoritmo