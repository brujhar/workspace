algoritmo "Desafio_05_jogo_de_futebol"

var
nome: caracter
vitoria: inteiro
empate: inteiro

inicio

escreva("Digite o nome do time: ")
leia (nome)

repita
      escreva("Digite a quantidade de vitorias: ")
      leia (vitoria)
ate(vitoria >=0)

repita
      escreva("Digite a quantidade de empates: ")
      leia (empate)
ate(empate >=0)

escreva("O time ",nome," está com",vitoria*3+empate," pontos.")


fimalgoritmo