#Questão 1)

def calculo_total(oConsumo, aTaxa):
  return aTaxa/100*oConsumo+oConsumo

def calculo_rateio(oTotal, oCliente):
  return oTotal/oCliente

def Imprime_total(oTotal):  
  oTotal = str("%.2f" % oTotal)
  oTotal = oTotal.replace('.', ',')
  print(f"\nO valor total da conta, com a taxa de serviço, será de R$ {oTotal}")

def Imprime_rateio(oRateio, oClientes):
  oRateio = str("%.2f" % oRateio)
  oRateio = oRateio.replace('.', ',')
  print(f"\nDividindo a conta por {oClientes} cliente(s), cada cliente deverá pagar R$ {oRateio}")

#Ler valor do consumo
while True:
  Consumo = str(input("Informe o valor total do consumo: R$ "))
  Consumo = Consumo.replace(',', '.')
  
  try:  
    Consumo = float(Consumo) 
  except ValueError:
    print("\nO valor informado não é um número!\nInforme novamente por favor.\n")
    continue
  
  if Consumo < 0:
    print("\nOconsumo não pode ser menor do que 0!\nInforme novamente por favor.\n")
  else:
    break

#Ler qtd de clientes
while True:
  try:
    Clientes = int(input("Informe o total de pessoas: "))
  except ValueError:
    print("\nO valor informando não é um número interio!\nInforme novamente por favor.\n")
    continue

  if Clientes < 1:
    print("\nA quantidade de pessoas não pode ser menor do que 1!\nInforme novamente por favor.\n")
  else:
    break

#Ler valor da taxa
while True:
  TaxaServico = str(input("Informe o percentual do serviço, entre 0 e 100: "))
  TaxaServico = TaxaServico.replace(',', '.')

  try:
    TaxaServico = float(TaxaServico)
  except ValueError:
    print("\nO valor informado não é um número!\nInforme novamente por favor.\n")
    continue

  if TaxaServico < 0: 
    print("\nA taxa de serviço está menor do que 0!\nInforme novamente por favor.\n")
  elif TaxaServico > 100:
      print("\nA taxa de serviço está maior do que 100!\nInforme novamente por favor.\n")
  else:
    break

Total = calculo_total(Consumo, TaxaServico)
Rateio = calculo_rateio(Total, Clientes)
Imprime_total(Total)
Imprime_rateio(Rateio, Clientes)