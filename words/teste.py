#https://github.com/dwyl/english-words
import json 
import re


def main():

    letra_certa = "..[^UI]T."
    pattern = r""+ letra_certa
    print(pattern)
    word = "GALAC"
    if not re.match(pattern, word):
        print("nao casou")
    else:
        print("casou")


    word1 = "HUMOR"
    letters_yes = "RUM"
    letters_not = "OF"

    if set(letters_yes).issubset(set(word1)): 
        print(set(word1))
        print(set(letters_yes))
        
    if not set(letters_not).issubset(set(word1)):
        print(set(word1))
        print(set(letters_not))
            
if __name__ == "__main__":
    main()
