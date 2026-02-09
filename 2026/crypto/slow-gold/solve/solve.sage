from pwn import *
import os
os.environ["TERM"] = "xterm-256color"
f = GF(2305843009213693951)
R.<x> = PolynomialRing(f)
def get_product(ks, Deltas, Us, Chis):
    A0s = [i / j for i,j in zip(Us, Chis)]
    # print(A0s)
    kab = [ks[i][0] * ks[i][1] for i in range(3)]
    left = [A0s[i] - kab[i] for i in range(3)]
    m = []
    for i in range(3):
        m.append([Deltas[i] *ks[i][0], Deltas[i] * ks[i][1], Deltas[i]^2])

    # Convert to Sage matrix and vector
    M = Matrix(f, m)
    v = vector(f, left)

    x = M.solve_right(v)
    return x
# ks = [[f(943720111007376216), f(1885384465453000562)], 
#       [f(1745198253203944101), f(712900627614396725)],
#       [f(1240819442611642767), f(271034758821941752)]]
# Deltas = [f(1023629857798532383), f(1196246083827479227), f(2056290512805016362)]
# Us = [f(1363456971219879559), f(1715636579201052293), f(1474947158465613632)]
# Chis = [f(655732545157940894), f(23595006344716706), f(338390492199224169)]
# print(get_product(ks, Deltas, Us, Chis))
evals = []
products = []
for i in range(11):
    ks = []
    Deltas = []
    Us = []
    Chis = []
    evals.append([i^j for j in range(10, 0, -1)] + [1])

    for _ in range(3):
        p = process(["./emp-zk/bin/test_arith_client"])
        print(p.recvline())
        p.sendline(str(i))
        ka = f(int(p.recvline().decode().split()[-1]))
        kb = f(int(p.recvline().decode().split()[-1]))
        Delta = f(int(p.recvline().decode().split()[-1]))
        Chi = f(int(p.recvline().decode().split()[-1]))
        U = f(int(p.recvline().decode().split()[-1]))
        ks.append([ka, kb])
        Deltas.append(Delta)
        Us.append(U)
        Chis.append(Chi)
        p.close()
    prod = get_product(ks, Deltas, Us, Chis)
    print(prod[-1])
    products.append(prod[-1])
M = Matrix(f, evals)
v = vector(f, products)

coeffs = M.solve_right(v)
print(coeffs)
p = 0
for i in range(11):
    p += x^i * coeffs[10 - i]
print(p.roots())