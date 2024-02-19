m = 1 << 52
a = 2760624790958533
c = 4164880461924199 
i = 3473400794307473
n = 16

def prev(seed):
    global m, c, a
    return (pow(a,-1,m)*(seed - c)) % m

lowerlimit = 9 * (1 << 52)//10 + 1
upperlimit = (1 << 52) - 1

minvector = vector([lowerlimit]*n)
maxvector = vector([upperlimit]*n)

b_helper = [0]
for j in range(1,n):
    b_helper.append(b_helper[-1] + c*(a**(j-1)))

Bhat = vector(b_helper)

a_helper = [[0]*n for j in range(n)]
for j in range(1,n):
    a_helper[j][j] = m
for j in range(n):
    a_helper[j][0] = a**j

A = matrix(ZZ,a_helper)

LHS = minvector - Bhat
RHS = maxvector - Bhat

AL = A.transpose().LLL().transpose()
ALi = AL.inverse()

LHSt = ALi*LHS
RHSt = ALi*RHS
midpoint = ((RHSt) + (LHSt))/2

solutions = []
for j in range(2**n):
    consider = []
    for k in range(n):
        num = midpoint[k]
        if j&(1 << k): 
            num = floor(num)
        else:
            num = ceil(num)
        consider.append(num)

    considerVec = vector(ZZ,consider)
    check = AL*considerVec
    correct = True
    for k in range(n):
        if (LHS[k] > check[k] or RHS[k] < check[k]):
            correct = False
            break
    if correct:
        solutions.append(check + Bhat)

print(f'sequences of n seeds that satisfy the inequalities: \n{solutions}')

truesolutions = []
for j in solutions:
    startseed = j[0]
    for k in range(27):
        startseed = prev(startseed)
    truesolutions.append(int(startseed) ^^ int(i))

truesolutions = list(set(truesolutions))

print(f'enter these seeds to fill an end portal: {truesolutions}')
