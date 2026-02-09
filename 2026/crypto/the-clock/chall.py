from random import randrange
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
from hashlib import md5
p = 
def clockadd(P1,P2):
  x1,y1 = P1
  x2,y2 = P2
  x3 = x1*y2+y1*x2
  y3 = y1*y2-x1*x2
  return x3,y3

def F(p):
  # caveat: caller must ensure that p is prime
  class F:
    def __init__(self,x):
      self.int = x % p
    def __str__(self):
      return str(self.int)
    __repr__ = __str__
    def __eq__(a,b):
      return a.int == b.int
    def __ne__(a,b):
      return a.int != b.int
    def __add__(a,b):
      return F(a.int + b.int)
    def __sub__(a,b):
      return F(a.int - b.int)
    def __mul__(a,b):
      return F(a.int * b.int)
    def __div__(a,b):
      # caveat: caller must ensure that b is nonzero
      return a*F(pow(b.int,p-2,p))
  return F

def scalarmult(P, n):
  # caveat: caller must ensure that n is nonnegative
  # caveat: n is limited by python's recursion limit
  if n == 0: return (Fp(0),Fp(1))
  if n == 1: return P
  Q = scalarmult(P, n//2)
  Q = clockadd(Q,Q)
  if n % 2: Q = clockadd(P,Q)
  return Q

Fp = F(p)

base_point = (Fp(13187661168110324954294058945757101408527953727379258599969622948218380874617),Fp(5650730937120921351586377003219139165467571376033493483369229779706160055207))

alice_secret = randrange(2**256)
alice_public = scalarmult(base_point, alice_secret)
print("Alice's public key: ", alice_public)
bob_secret = randrange(2**256)
bob_public = scalarmult(base_point, bob_secret)
print("Bob's public key: ", bob_public)

assert scalarmult(bob_public, alice_secret) == scalarmult(alice_public, bob_secret)
shared_secret = scalarmult(bob_public, alice_secret)
key = md5(f"{shared_secret[0].int},{shared_secret[1].int}".encode()).digest()
FLAG = b""
print("Encrypted flag: ", AES.new(key, AES.MODE_ECB).encrypt(pad(FLAG, 16)).hex())
