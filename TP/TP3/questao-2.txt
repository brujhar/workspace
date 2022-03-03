# Questão 2)

while True:
  try:
    idade = int(input("Informe a idade: "))
  except ValueError:
    print("\nO valor informado não é um número interio!\nInforme novamente por favor.\n")
    continue
  
  if idade <= 0:
    print("\nA idade tem que ser maior do que 0!\nInforme novamente por favor.\n")
    continue
  
  elif idade <16:
    print ("\nNão tem direito a voto.")
  
  elif (idade >= 18) and (idade <70):
    print ("\nTem obrigação de votar.")
  
  else:
    print ("\nNão tem obrigação de votar.")
  
  break