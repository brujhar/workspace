algoritmo "Desafio_03_datas_em_dias"
// Função : 
// Autor : Bruno Correia
// Data : 02/02/2022
// Seção de Declarações

var
	idade_ano: inteiro
	idade_mes: inteiro
	idade_dia: inteiro
	dias: inteiro

inicio

	escreval ("Digite a sua idade em anos, meses e dias")

	repita
		escreva ("Digite os anos:")
		leia (idade_ano)
	ate(idade_ano >= 0)

	repita
	      escreva ("Digite os meses (entre 0 e 11):")
	      leia (idade_mes)
	ate(idade_mes >= 0) e (idade_mes < 12)

	repita
	      escreva ("Digite os dias (entre 0 e 29):")
	      leia (idade_dia)
	ate(idade_dia >= 0) e (idade_dia < 30)

	dias <- (idade_ano*365)+(idade_mes*30)+idade_dia

	escreva("A sua idade é de", dias, " dias")

fimalgoritmo