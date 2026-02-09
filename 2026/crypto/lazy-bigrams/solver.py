import os
import re

# Manual solver
# 1. Knowing that the final text begins with "lactf{", obtain the double photetically mapped text and map all the associated bigrams. This will solve a decent portion of the cipher.
# 2. Knowing that the decoded ciphertext consist only of phonetic words, fill in any bigrams that are the only way to produce phonetic words. (Ex. In AL PH __ SC AR, the bigram "AO" forms "Alpha Oscar" )
# 3. After doing step 2, there will be longer bigram strings where it's not obvious what the substitution is. Start reading the partial plaintext for more clues. (Ex. In ____ECHOROMEOOSCAR, the bigrams ZU LU fill the blank to form ZULU ECHO ROMEO OSCAR, which is ZERO)
# 4. Steps 2 and 3 should be sufficent to decode the whole message and thus the flag.

CIPHERTEXT = (
    "RXENUEJGAIYVKMHEAKDANXDAXMMCMCZARPJUDANXXBAKNKSICIEFYTHEAKFKJVEMXMJXPFQHVXCICOXJMUHEAKEARQXRKKDJGXQVDZJWABIXRPQVDZFWXKWPYIDJFKJVPKHACACOXJPKHACATDTDVXCIEARQXRKKUJCARXRSDHHUHYFKJVEMXMVJYIMOWTXKYWFKJVMUHEAKUJCARXQZUJUWQJKZEHFKHACAPCNRTGVXCITFMOSEDPLXUJTGPRZWEILNVXCIFKJVPKHACACOXJMUHEAKEARQXRKKDJGXQVDZTTDHHUHYEARQXRKKSZYUMLUJTGPRZWHSKKXKUJCARXZWHACAFKJVLXUJTGPRZWQVDZHYYVQZUJPKHACACOXJSRRPJUFKJVLXUJLXUJIOABIXRPQVDZTTDHHUHYFKJVEMXMJXPFQHTFMODANXDAXMJXPFQHTFMODANXVJYIMOKMHEAKEARQXRKKFPRIVXCIVXCIUBCPTGZFQJKZEHORJUCOVXCIFKJVQVSIKGXBAKNKSIQVDZKGPRZWVXCIHUCDFKJFHACAUBCPTGTZPRZWUBCPTGZFQJKZEHORJUCOVXCIFKJVQVSIKGXBAKNKSIQVDZKGPRZWVXCISEDPTGPRZWDANXDPLLJFFKHACAQVDZFBQJKZEHMIUJPGEMHUHACARXENHUCDFKIXPRZWQVDZHYYVQZUJPKHACAHUCDFKJFHACAUBCPTGTZPRZWTFMOUEJGQNJILXUJUGDHHUHYEARQXRKKSZYUMLUJTGPRZWHSKKXKUJCARXZWHACAFKJVLXUJQVSIKGJXPFQHVXCIFKJVTGPRZWDANXMJDHHUHYEARQXRKKUEJGNOABIXRPQVDZKGPRZWTFMOVXCIUEJGNQEMNERPJUCOXJQVSIKGJXPFQHVXCIFKJVTGPRZWDANXYLYIDJDANXYIQJKZEHVPEMHUHACAQVDZFBQJKZEHMIUJRPYIDJDANXYIQJKZEHVPEMHUHACAUBCPTGZFQJKZEHNZPFQHHUCDFKJFHACAFKJVPRYVZJSIKGMLUJQJLLJFMIUJUWQJKZEHNZPFQHEARQXRKKSZYUJXPFQHDANXQCHACAHSKKXKUJCARXKMHEAKFKJVUWQJKZEHFKHACAPCNRTGVXCITFMOSEDPLXUJTGPRZWUBCPTGZFQJKZEHORJUCOVXCIFKJVQVSIKGXBAKNKSIQVDZKGPRZWVXCISEDPTGPRZWDANXDPLLJFFKHACAUBCPTGZFQJKZEHNZPFQHHUCDFKJFHACAFKJVPRYVZJSIKGMLUJQJLLJFMIUJUWQJKZEHTTDHHUHYEARQXRKKSZYUMLUJTGPRZWHSKKXKUJCARXZWHACAFKJVLXUJPKHACAEARQXRKKVXCIUBCPTGZFQJKZEHORJUCOVXCIFKJVQVSIKGXBAKNKSIQVDZKGPRZWVXCIKTVUMOSTRPJUUEJGFFSIKGQNJILXUJCSYIMOZWHACAEARQXRKKVXCIRXENUEJGAIYVKMHEAKRXENUEJGAIYVKMHEAKUBCPTGZFQJKZEHORJUCOVXCIFKJVQVSIKGXBAKNKSIQVDZKGPRZWVXCICOXJMUHEAKEARQXRKKDJGXQVDZXKHEAKRXENTDTDCIEFYTHEAKFPRIUEJGDAXMQCHACACOXJSRRPJUFKJVLXUJLXUJUGDHHUHYEARQXRKKSZYUMLUJTGPRZWHSKKXKUJCARXZWHACAFKJVLXUJPKHACAEARQXRKKVXCICOXJMUHEAKEARQXRKKDJGXQVDZTTDHHUHYEARQXRKKSZYUMLUJTGPRZWHSKKXKUJCARXZWHACAFKJVLXUJIOABIXRPQVDZFWXKWPYIDJFKJVPKHACACOXJLFOOEDUJTGPRZWQVDZKGPRZWQVDZHYYVQZUJPKHACAUBCPTGZFQJKZEHORJUCOVXCIFKJVQVSIKGXBAKNKSIQVDZKGPRZWVXCIEARQXRKKQVDZSVLLJFMIUJPRYVWTXKYWVXCIFKJVLFOOEDUJTGPRZWQVDZEPRVSMGCCIEFRXPFQHHSKKXKFPRIVXCIWBNGQZUJCARXJUXMQCHACAHSKKXKVXCIUJCARXRSDHHUHYFKJVEMXMVJYIMOWTXKYWFKJVMUHEAKUJCARXQZUJAB"
)

# Initialize mapping dictionary
# Maps Ciphertext Bigram -> Plaintext Bigram
bigram_map = {}

phonetic_map = [
    "ALPHA", "BRAVO", "CHARLIE", "DELTA", "ECHO", "FOXTROT", "GOLF", "HOTEL",
    "INDIA", "JULIETT", "KILO", "LIMA", "MIKE", "NOVEMBER", "OSCAR", "PAPA",
    "QUEBEC", "ROMEO", "SIERRA", "TANGO", "UNIFORM", "VICTOR", "WHISKEY",
    "XRAY", "YANKEE", "ZULU", "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE",
    "SIX", "SEVEN", "EIGHT", "NINE", "UNDERSCORE", "OPENCURLYBRACE", "CLOSECURLYBRACE"
]

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def get_crib_map():
    pt_start = "LIMAINDIAMIKEALPHAALPHALIMAPAPAHOTELALPHACHARLIEHOTELALPHAROMEOLIMEINDIAECHOTANGOALPHANOVEMBERGOLFOSCARFOXTROTOSCARXRAYTANGOROMEOOSCARTANGOOSCARPAPAECHONOVEMBERCHARLIEUNIFORMROMEOLIMAYANKEEBRAVOROMEOALPHACHARLIEECHO" 
    
    mapping = {}
    for i in range(0, len(pt_start) - 1, 2):
        ct_bi = CIPHERTEXT[i:i+2]
        pt_bi = pt_start[i:i+2]
        mapping[ct_bi] = pt_bi
    return mapping

def print_display(mapping):
    clear_screen()
    print("=== MANUAL BIGRAM SOLVER ===")
    print("Strategy: The plaintext is composed of NATO phonetic words (e.g., ALPHA, BRAVO).")
    print("Look for patterns like 'AL__HA' -> 'ALPHA' and fill in the blanks.\n")
    
    # Process text in chunks for display
    chunk_size = 60 # characters per line
    
    decrypted_full = []
    
    for i in range(0, len(CIPHERTEXT), 2):
        ct_bi = CIPHERTEXT[i:i+2]
        pt_bi = mapping.get(ct_bi, "__")
        decrypted_full.append(pt_bi)
        
    decrypted_str = "".join(decrypted_full)
    
    # Display loop
    for i in range(0, len(CIPHERTEXT), chunk_size):
        ct_line = CIPHERTEXT[i:i+chunk_size]
        pt_line = decrypted_str[i:i+chunk_size]
        
        # Add spaces between bigrams for readability
        ct_spaced = " ".join([ct_line[j:j+2] for j in range(0, len(ct_line), 2)])
        pt_spaced = " ".join([pt_line[j:j+2] for j in range(0, len(pt_line), 2)])
        
        print(f"CT: {ct_spaced}")
        print(f"PT: {pt_spaced}")
        print("-" * len(ct_spaced))
        
    return decrypted_str

def main():
    global bigram_map
    
    # Option to auto-fill the start
    print("Would you like to apply the known crib for 'lactf{'? (y/n)")
    if input("> ").lower().startswith('y'):
        bigram_map = get_crib_map()

    while True:
        decrypted_text = print_display(bigram_map)
        
        print("\nCommands:")
        print("  <CT>=<PT>  : Map ciphertext bigram to plaintext (e.g., NT=LI)")
        print("  save       : Save current mapping to file")
        print("  quit       : Exit")
        
        cmd = input("\nInput: ").strip().upper()
        
        if cmd == "QUIT":
            break
        elif cmd == "SAVE":
            with open("mapping.txt", "w") as f:
                for k, v in bigram_map.items():
                    f.write(f"{k}={v}\n")
            print("Saved to mapping.txt")
            input("Press Enter...")
        elif "=" in cmd:
            try:
                lhs, rhs = cmd.split("=")
                lhs, rhs = lhs.strip(), rhs.strip()
                
                if len(lhs) != 2 or len(rhs) != 2:
                    print("Error: Both sides must be exactly 2 characters.")
                    input("Press Enter...")
                    continue
                
                bigram_map[lhs] = rhs
            except ValueError:
                print("Invalid format.")
        else:
            print("Unknown command.")

if __name__ == "__main__":
    main()