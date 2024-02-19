p = 171687271187362402858253153317226779412519708415758861260173615154794651529095285554559087769129718750696204276854381696836947720354758929262422945910586370154930700427498878225153794722572909742395687687136063410003254320613429926120729809300639276228416026933793038009939497928563523775713932771366072739767
f = GF(p)
pr.<x> = PolynomialRing(f)
ts = 0 # put ts here
tcoeff = [] # put the corresponding target coefficients here
alphas = [] # put alphas here
ss = [] # put your ss here
alpha = discrete_log_lambda(f(alphas[0]), f(ss[0]), bounds=[0,2^40])
tcoeff[-1] -= ts
target = pr(tcoeff[::-1])
s, _ = target.roots()[0]
tcoeff = [] # new coefficients
ts = sum([(pow(s,7 - i, p) * tcoeff[i]) % p for i in range(len(tcoeff))]) % p
h = 2
f = pow(h, ts, p)
fa = pow(f, alpha, p)