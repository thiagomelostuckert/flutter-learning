# utilizado na geração de número aleatório
from numpy.random import seed
from numpy import random

import time 

# semente para geração de número aleatório é o tempo de execução do programa
seed(seed=int(time.time())) 



def joga():
    areas = ["Pescoço", "Orelha", "Costas", "Bumbum", "Coxa", "Mamilos", "Dedos", "Lábios", "Pau", "Vagina", "Ânus"]
    acao = ["Arranhar", "Apertar", "Morder", "Lamber", "Beijar", "Chupar", "Tocar levemente", "Assoprar", "Tapinha", "Susurrar"]
 
    index_aleatorio_areas = random.randint(len(areas))
    area_escolhida = areas[index_aleatorio_areas] 

    index_aleatorio_acao = random.randint(len(acao))
    acao_escolhida = acao[index_aleatorio_acao] 
    
    print(acao_escolhida + " " + area_escolhida)
    

def main():
    print("Dadinho safadinho")

    i = 0 
    while (1):    
        if i % 2 == 0: 
            print("\nThiago")
        else: 
            print("\nJúlia")

        joga()
        tecla = input("\nAperte enter para uma nova rodada, caso deseje sair digite \"s\"")
        if tecla in ("s", "S"):
            return 0
        
        i+=1

if __name__ == "__main__":
    main()