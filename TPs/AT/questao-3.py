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
        break


percentualMaximoMoradia = 30
percentualMaximoEducacao = 20
percentualMaximoTransporte = 15

rendaMensalTotal = capturaFloat("Renda mensal total: R$ ")
gastosTotaisMoradia = capturaFloat("Gastos totais com moradia: R$ ")
gastosTotaisEducacao= capturaFloat("Gastos totais com educação: R$ ")
gastosTotaisTransporte= capturaFloat("Gastos totais com transporte: R$ ")

print("Diagnóstico:")
imprimeDiagnostico("moradia", percentualMaximoMoradia, gastosTotaisMoradia, rendaMensalTotal)
imprimeDiagnostico("educação", percentualMaximoEducacao, gastosTotaisEducacao, rendaMensalTotal)
imprimeDiagnostico("transporte", percentualMaximoTransporte, gastosTotaisTransporte, rendaMensalTotal)