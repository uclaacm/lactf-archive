def о(a, b):
    return a+b
def ο(a, b):
    return a-b
def օ(a, b):
    return a*b
def ỏ(a, b):
    return a//b
def ơ(a, b):
    return a^b
def ó(a, b):
    return a|b
def ὀ(a, b):
    return a&b
def ὸ(a, b):
    return b-a
def ὄ(a, b):
    return a
def ὂ(a, b):
    return b
def ȯ(a, b):
    return a % b
    

ὁ = [205, 196, 215, 218, 225, 226, 1189, 2045, 2372, 9300, 8304, 660, 8243, 16057, 16113, 16057, 16004, 16007, 16006, 8561, 805, 346, 195, 201, 154, 146, 223]

guess = input("What's the flag? ") # remember, flags start with lactf{

if (len(guess) < len(ὁ)):
    print("That's too short :(")
    exit()
    
for ö in range(len(ὁ)-1):
    ό = ord(guess[ö])
    ὃ = ord(guess[ö+1])
    if (о(ὄ(ό,ὃ),ὂ(ό,ὃ)) != ὁ[ơ(ö,ȯ(օ(ό,ὃ),ό))]):
        print("That's not the flag :(")
        exit()
    
print("That's the flag! :)")
