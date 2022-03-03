# Questão 3)

def Imprime_vencendor(oParticipante, aMaiorNota, oEmpate):
  if oEmpate == True:
    print(f"\nTemos um empate!\nOs vencedores, com a nota {aMaiorNota}, foram", end="")
    
    for p in oParticipante:
      if p[1] == aMaiorNota:
        print(f" [{p[0]}]", end="")

    print(".", end="")
  else:
    for p in oParticipante:
      
      if p[1] == aMaiorNota:
        print(f"\nO(a) vencedor(a) foi {p[0]} com nota {p[1]}!")

auxiliar = []
participante = []
empate = False

for i in range(1, 6):
  auxiliar.append((input(f"Informe nome do {i}º participante: ")))
  
  while True:
    nota = (input(f"Informe nota do {i}º participante: "))
  
    try:
      nota = float(nota)
    except ValueError:
      print("\nO valor digitado não é uma nota valida!\nDigite entre 0 e 10\nDigite novamente por favor.\n")
      continue
  
    if nota>=0 and nota<=10:
      auxiliar.append(nota)
      break
    else:
      print("\nO valor digitado não é uma nota valida!\nDigite entre 0 e 10\nDigite novamente por favor.\n")
  
  if len(participante) == 0:
    maiornota = auxiliar[1]
  else:
    if auxiliar[1] > maiornota:
      maiornota = auxiliar[1]
      empate = False
    elif auxiliar[1] == maiornota:
      empate = True
  
  participante.append(auxiliar[:])
  
  auxiliar.clear()

Imprime_vencendor(participante, maiornota, empate)