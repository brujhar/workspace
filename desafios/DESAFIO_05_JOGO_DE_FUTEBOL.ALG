algoritmo "Desafio_05_jogo_de_futebol"
// Disciplina : L�gica, Computa��o e Algoritmos [22E1_1]
// Professor: Elbert
// Fun��o :
// Autor : Bruno Correia
// Data : 02/02/2022
// Se��o de Declara��es

//Receba o nome do time, a quantidade de vit�rias, a quantidade de empates.
//Exiba o seguinte relat�rio:
//"O time xxx est� com yyy pontos". Onde:
//xxx � o nome do time;
//yyy � a quantidade de pontos;
//A pontua��o deve ser calculada da seguinte maneira: quantidade de vit�rias * 3 pontos + quantidade de empates

    funcao calculaPontos(): inteiro
    inicio
          retorne vitoria*3 + empate
    fimfuncao

    procedimento impressao()
    inicio
          escreva("O time ",nome," est� com",calculaPontos," pontos.")
    fimprocedimento

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

   impressao()

fimalgoritmo