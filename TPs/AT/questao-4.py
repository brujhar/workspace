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

def capturaInt (texto):
    while True:
        try:
            aux = int(input(texto))
        except ValueError:
            print("\nO valor informado não é um número válido!\nInforme novamente por favor.\n")
            continue
        return aux

def imprimeMontante (n, valor):
    print(f"Após {n+1} período(s), o montante será de R$ {valor:.2f}.")

def calculaMontante (aporteInicial, juros, aportePeriodo, tempo,):
    m = 0
    while m < tempo:
        if m == 0:
            print("")
            montante = aporteInicial * (1 + juros / 100) + aportePeriodo
            imprimeMontante(m, montante)
        else:
            montante = montante * (1 + juros / 100) + aportePeriodo
            imprimeMontante(m, montante)
        m += 1

valorInicial = capturaFloat("Valor inicial: R$ ")
taxaJuros = capturaFloat("Rendimento por período (%): ")
valorPeriodo = capturaFloat("Aporte a cada periodo: R$ ")
periodo = capturaInt("Total de períodos: ")

calculaMontante(valorInicial, taxaJuros, valorPeriodo, periodo)

#easterEgg
# Abaixo  a "formula do valor futuro", que executa o calculo em 1 linha, mas sem print. (>_<)
# montante = (aporteInicial * (1 + Juros / 100) ** Meses) + (aporteMes * (((1 + Juros / 100) ** Meses) - 1)) / Juros