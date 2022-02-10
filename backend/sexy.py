# utilizado na geração de número aleatório
from numpy.random import seed
from numpy import random

import time 

# semente para geração de número aleatório é o tempo de execução do programa
seed(seed=int(time.time())) 

fase1 = {
"Pescoço": ["Beijar", "Chupar", "Tocar levemente", "Assoprar"],
"Orelha":["Morder","Chupar","Assoprar","Sussurrar"],
"Dedos":["Morder","Lamber","Beijar","Chupar","Tocar levemente"],
"Lábios":["Morder","Lamber", "Beijar"]
 }

fase2 = {
"Pescoço ":["Apertar","Morder","Lamber","Beijar","Chupar","Cheirar","Tocar levemente","Assoprar","Sussurrar"],
"Coxa":["Arranhar","Apertar","Morder","Lamber","Beijar","Chupar","Tocar levemente","Tapinha"],
"Costas":["Arranhar","Lamber","Beijar","Chupar","Tocar levemente"],
"Bumbum":["Arranhar","Apertar","Morder","Lamber","Beijar","Chupar","Tocar levemente","Tapinha"],
"Virilha ":["Morder","Lamber"," Beijar","Chupar","Tocar levemente"],
"Seios":["Apertar","Morder","Lamber","Beijar","Chupar","Tocar levemente","Assoprar"]
 }

fase3 = {
"Pau":["Apertar","Lamber","Beijar","Chupar","Tocar levemente","Assoprar"],
"Vagina":["Lamber","Beijar","Chupar","Tocar levemente"],
"Ânus":["Lamber","Beijar","Chupar","Tocar levemente"]
}
 
def main():
    print("Dadinho safadinho")


    fases = []
    fases.append(fase1)
    i = 0 
    while (1):    
        if i % 2 == 0: 
            print("\nThiago")
        else: 
            print("\nJúlia")

        if i == 4: 
            fases.append(fase2)
        if i == 12: 
            fases.append(fase3)
                
        index_aleatorio_fase = random.randint(len(fases))
        fase_escolhida = list(fases[index_aleatorio_fase])
        
        index_aleatorio_areas = random.randint(len(fase_escolhida))
        area_escolhida = fase_escolhida[index_aleatorio_areas] 
        
        index_aleatorio_acao = random.randint(len(fases[index_aleatorio_fase][area_escolhida]))
        acao_escolhida = fases[index_aleatorio_fase][area_escolhida][index_aleatorio_acao] 

        print(acao_escolhida + " " + area_escolhida)


        tecla = input("\nAperte enter para uma nova rodada, caso deseje sair digite \"s\"")
        if tecla in ("s", "S"):
            return 0
        
        i+=1

if __name__ == "__main__":
    main()