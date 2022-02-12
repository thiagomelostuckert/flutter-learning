#https://github.com/dwyl/english-words
import json 

def main():
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
