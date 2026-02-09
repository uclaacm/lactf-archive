# SageMath script
from random import randrange
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
from hashlib import md5
p = 13767529254441196841515381394007440393432406281042568706344277693298736356611
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
p = 13767529254441196841515381394007440393432406281042568706344277693298736356611

R.<x> = GF(p)[]

K.<i> = GF(p^2, modulus=x^2+1)

g_x, g_y = 13187661168110324954294058945757101408527953727379258599969622948218380874617, 5650730937120921351586377003219139165467571376033493483369229779706160055207
h_x, h_y = 13109366899209289301676180036151662757744653412475893615415990437597518621948, 5214723011482927364940019305510447986283757364508376959496938374504175747801

G_element = K(g_y) + K(g_x)*i
H_element = K(h_y) + K(h_x)*i

alice_secret = discrete_log(H_element, G_element, ord=p+1)

Bob =  (Fp(1970812974353385315040605739189121087177682987805959975185933521200533840941), Fp(12973039444480670818762166333866292061530850590498312261363790018126209960024))
flag = bytes.fromhex("d345a465538e3babd495cd89b43a224ac93614e987dfb4a6d3196e2d0b3b57d9")
shared_secret = scalarmult(Bob, alice_secret)
key = md5(f"{shared_secret[0].int},{shared_secret[1].int}".encode()).digest()
print("flag: ", AES.new(key, AES.MODE_ECB).decrypt(flag))