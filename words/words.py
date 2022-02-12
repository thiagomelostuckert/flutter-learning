# https://github.com/dwyl/english-words
def main():
    f = open('words_alpha.txt')
    lines = f.readlines()
    wordsOf5Letters = []

    for line in lines:
        if len(line) == 6:  # Tbm tem que considerar o \n no final
            wordsOf5Letters.append(line[0:5])  # tiro o \n do final

    # print(wordsOf5Letters)
    # print(len(wordsOf5Letters))

    letra_certa = ""
    letra_nao = ""
    letra_sim = ""

    words_jogada = wordsOf5Letters

    for jogada in range(0, 6):
        print("Jogada" + str(jogada))
        letra_certa = input(
            "Digite as letras que você já tenha certeza, as que não tiver digite \"*\", exemplo A**L*:")
        letra_nao += input("Digite as letras que você tem certeza que não estão na palavra, todas as letras juntas, exemplo BDE:")
        letra_nao = letra_nao.upper()
        letra_sim += input("Digite as letras que você tem certeza que estão na palavra, todas as letras juntas, exemplo CFGO:")
        letra_sim = letra_sim.upper()
        words_filter = []

        for word in words_jogada:
            word = word.upper()
            word_valida = True
            for idx in range(0, 5):
                if letra_certa[idx] != '*' and word[idx] != letra_certa[idx]:
                    word_valida = False
                    break

            if not set(letra_sim).issubset(set(word)):
                word_valida = False

            if set(letra_nao).issubset(set(word)):
                word_valida = False

            if word_valida: 
                print(word)
                words_filter.append(word)
        
        words_jogada = words_filter

if __name__ == "__main__":
    main()