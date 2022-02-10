algoritmo "Desafio_05_jogo_de_futebol"
// Disciplina : Lógica, Computação e Algoritmos [22E1_1]
// Professor: Elbert
// Função :
// Autor : Bruno Correia
// Data : 02/02/2022
// Seção de Declarações

//Receba o nome do time, a quantidade de vitórias, a quantidade de empates.
//Exiba o seguinte relatório:
//"O time xxx está com yyy pontos". Onde:
//xxx é o nome do time;
//yyy é a quantidade de pontos;
//A pontuação deve ser calculada da seguinte maneira: quantidade de vitórias * 3 pontos + quantidade de empates

    funcao calculaPontos(): inteiro
    inicio
          retorne vitoria*3 + empate
    fimfuncao

    procedimento impressao()
    inicio
          escreva("O time ",nome," está com",calculaPontos," pontos.")
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