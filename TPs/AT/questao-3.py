def imprimeDiagnostico(tipo, percentualMaximo, gastosTotais, renda):
    percentual = calculaPercentual(gastosTotais, renda)
    msg = geraMsg(percentual, percentualMaximo, tipo, renda)
    print(f"Seus gastos totais com {tipo} comprometem {percentual}% de sua renda total. O máximo recomendado é de {percentualMaximo}%. {msg}")

def calculaPercentual(gastosTotais, renda):
    return gastosTotais * 100 / renda

def calculaValorMaximo(renda, percentualMaximo):
    return renda * percentualMaximo / 100

def geraMsg(percentual, percentualMaximo, tipo, renda):
    msg = "Seus gastos estão dentro da margem recomendada."
    if percentual > percentualMaximo:
        msg = f"Portanto, idealmente, o máximo de sua renda comprometida com {tipo} deveria ser de R$ {calculaValorMaximo(renda, percentualMaximo)}."
    return msg

def capturaFloat (texto):
    while True:
        aux = str(input(texto))
        aux = aux.replace(',', '.')

        try:
            aux = float(aux)
        except ValueError:
            print("\nO valor informado não é um número!\nInforme novamente por favor.\n")
            continue
        return aux

tipoGasto = ("moradia", "educação", "transporte")
percentualGastoMaximo = (30, 20, 15)
gastosTotais = []

rendaMensalTotal = capturaFloat("Renda mensal total: R$ ")
for p in range(len(tipoGasto)):
    gastosTotais.append (capturaFloat(f"Gastos totais com {tipoGasto[p]}: R$ "))

print("Diagnóstico:")
for p in range(len(tipoGasto)):
    imprimeDiagnostico(tipoGasto[p], percentualGastoMaximo[p], gastosTotais[p], rendaMensalTotal)