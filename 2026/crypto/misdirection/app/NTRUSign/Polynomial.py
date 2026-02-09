import numpy as np
import copy
import random
from NTRUSign.prime_constant import PRIMES_LIST


class Polynomial:
    """
    Generic class for manipulating polynomials

    Constructor :
        - Polynomial(N) create a polynomial full of zeros and of size N
        - Polynomial(N, gen=True, o=k) create the polynomial X^k of size n
    """

    def __init__(self, N=503, gen=False, o=0):
        self.coeff = np.array([0 for _ in range(0, N)])
        self.N = len(self.coeff)
        if gen:
            self.coeff[o] = 1

    def construct(self, coeff):
        """
        Create a Polynomial object from an array of coefficient
        """
        self.coeff = np.array(coeff)
        self.N = len(self.coeff)

    def __len__(self):
        """
        Get the length of a polynomial
        """
        return self.N

    def __add__(self, other):
        """
        Define a classical addition on two polynomials.
        Entrance parameters aren't affected.
        """
        res = Polynomial(N=max(len(self), len(other)))

        for k in range(min(len(self), len(other))):
            res.coeff[k] = self.coeff[k] + other.coeff[k]

        if min(len(self), len(other)) == len(self):
            for k in range(len(other), len(self)):
                res.coeff[k] = other.coeff[k]
        else:
            for k in range(len(self), len(other)):
                res.coeff[k] = self.coeff[k]
        return res

    def __sub__(self, other):
        """
        Define a classical substraction on two polynomials.
        Entrance parameters aren't affected.
        """
        tmp = Polynomial(N=other.N)
        tmp.coeff = -other.coeff
        return self + tmp

    def __mul__(self, other):
        """
        Define a classical multiplication on two polynomials or between
        an int and a polynomial
        Entrance parameters aren't affected.
        """
        if (isinstance(other, int) or
                isinstance(other, np.int64) or
                isinstance(other, float)):
            # If the other operand is a number (int, float, np.int64)
            res = Polynomial(N=self.N)
            res.coeff = self.coeff * other

        elif isinstance(other, Polynomial):
            # If the other operand is a polynomial
            res = Polynomial(N=len(self) + len(other))
            for k in range(len(res)):
                for j in range(k+1):
                    try:
                        res.coeff[k] += self.coeff[j]*other.coeff[k-j]
                    except IndexError:
                        # Polynomials have different sizes
                        pass
        return res

    def star_multiply(self, other):
        """
        Define the star multiplication from NTRU algorithms.
        This is just a multiplication modulo X^n
        Entrance parameters aren't affected.
        """
        res = Polynomial(N=max(len(self), len(other)))
        for k in range(len(res)):
            for i in range(len(res)):
                try:
                    if i <= k:
                        res.coeff[k] += self.coeff[i] * other.coeff[k-i]
                    else:
                        res.coeff[k] += self.coeff[i] * other.coeff[len(self)+k-i]
                    res.coeff[k] = res.coeff[k]
                except IndexError:
                    # In case of one polynomial
                    # having a bigger degree than the other
                    res.coeff[k] += 0

        return res

    def star_multiply_fft(self, other):
        """
        FFT-based star multiplication (cyclic convolution).
        Computes multiplication modulo X^n - 1.
        """
        n = max(len(self), len(other))

        # Zero-pad both polynomials to length n (this is already true though)
        a = self.coeff
        b = other.coeff

        # FFT size: at least 2n for linear convolution
        size = 1
        while size < 2 * n:
            size <<= 1

        # FFT
        fa = np.fft.fft(a, size)
        fb = np.fft.fft(b, size)

        # Pointwise multiply
        fc = fa * fb

        # Inverse FFT
        c = np.fft.ifft(fc).real

        # Fold linear convolution into cyclic one
        res_coeff = [0] * n
        for i in range(2 * n - 1):
            res_coeff[i % n] += int(round(c[i]))

        res = Polynomial(N=n)
        res.coeff = np.array(res_coeff)
        return res

    def __str__(self):
        """
        This method is useful to print a polynomial in its common form
        i.e. aX^n+bX^(n-1)...
        """
        s = ""
        for i in range(len(self)-1, 0, -1):
            if self.coeff[i] != 0:  # Do not print null coefficient
                s += str(self.coeff[i])+"X^"+str(i)+" + "
        s += str(self.coeff[0])
        return s

    def __truediv__(self, other):
        """
        Define a polynomial division by an integer
        or a polynomial.
        Entrance parameters aren't affected.

        The polynomial division is the division of every coefficient
        by the coefficient of the same degree in the other polynomial
        """
        if isinstance(other, int):
            res = Polynomial(N=self.N)
            res.coeff = self.coeff // other
            return res
        elif isinstance(other, Polynomial):
            res = Polynomial(N=self.N)
            res.coeff = self.coeff/other.coeff
            return res
        else:
            raise Exception(f"Can't divide polynome by {type(other)}")

    def ord(self):
        """
        Return the degree of the polynomial, i.e. the power of the highest
        non-zero coefficient.
        """
        for i in range(1, self.N+1):
            if self.coeff[self.N-i] != 0:
                return self.N-i
        return -1

    def mod(self, q):
        """
        Inject the polynomial in Z/qZ
        i.e. put its coefficients in [0;q[
        by taking the rest of the euclidean
        division by q
        """
        self.coeff %= q
        return self

    def evaluate(self, x):
        """
        Evaluate the polynomial in x, i.e. return P(x)
        """
        res = 0
        for i in range(len(self)):
            res += self.coeff[i] * x**i
        return res

    def inv(self, p):
        """
        Compute the inverse of self modulo the ideal (p, x^N-1)
        with p=q^r
        This algorithm is an application of the
        Extended Euclidean Algorithm
        """
        # Calculate if p is a power of a prime
        # i.e. if there is p1 prime where log(p)/log(p1) is integer
        q = 0
        logp = np.log(p)
        for p1 in PRIMES_LIST:
            if p1 == p:
                (q, r) = (p, 1)
                break
            res = logp/np.log(p1)
            if abs(res-np.round(res)) < 10**(-10):
                (q, r) = (p1, int(res))
        if q == 0:
            raise Exception(f'{p} is not a power of a prime')

        # Variable initialization

        N = len(self)

        xp0 = Polynomial(N=N)
        xp1 = Polynomial(N=N)
        xp1.coeff[0] = 1
        yp0 = Polynomial(N=N)
        yp0.coeff[0] = 1
        yp1 = Polynomial(N=N)

        """
        We will compute xp*A + yp*B = 1
        As A is equivalent to 0 in this field
        We will have B*yp = 1 i.e. yp=B^-1
        """
        B = Polynomial(N=N)
        B.coeff = self.coeff

        R = Polynomial(N=N)
        R.coeff = self.coeff

        A = Polynomial(N=N+1)
        A.coeff[N] = 1
        A.coeff[0] = -1 % q

        while np.linalg.norm(R.coeff) != 0:
            # Process to polynomial Long Division B/A
            Q, R = longDivide(B, A, q)
            (B, A) = (A, R)
            # Increment xp and yp according to EED
            yp0.coeff, yp1.coeff = yp1.coeff, (yp0 - Q * yp1).coeff % q
            xp0.coeff, xp1.coeff = xp1.coeff, (xp0 - Q * xp1).coeff % q

        if B.ord() > 0:
            raise Exception("Inversion Fails")
        # Format the result
        c = yp0 * pow(int(B.coeff[0]), -1, q)
        c.mod(q)
        # Truncate the result to ensure a length of N
        c.N = N
        c.coeff = c.coeff[:N]

        """
        If r>1 i.e. we're trying to calculate the inverse modulo p^r
        with p prime and r an integer.
        We use the strategy decribed on page 27 of "NTRU: A NEW HIGH SPEED
        PUBLIC KEY CRYPTOSYSTEM" by Jeffrey HOPSTEIN, Jill PIPHER and
        Joseph H. SILVERMAN.
        """
        if r > 1:
            p = q
            Identity = Polynomial(N=N, gen=True, o=0)
            while p < q**r:
                self.q = p**2
                cp = (self.star_multiply(c).mod(p**2) - Identity) / p
                c.q = p**2
                c = c - c.star_multiply(cp).mod(p) * p
                p = p**2
            c.mod(q**r)
        return c


def xgcd(A, B):
    """
    Compute the extended euclidean algorithm
    on polynomial A and B of degree 0
    """
    if isinstance(A, Polynomial) and isinstance(B, Polynomial):
        a = A.coeff[0]
        b = B.coeff[0]
    else:
        a = A
        b = B

    if b == 0:
        return (1, 0, A)
    else:
        (x, y, g) = xgcd(b, a % b)
        return (y, x-(a//b)*y, g)


def modXnp1(f: Polynomial, N):
    """
    Reduce f mod(X^n+1)
    """
    res = Polynomial(N=N)
    for i in range(N):
        res.coeff[i] = f.coeff[i] - f.coeff[i+N]
    return res


def N(f: Polynomial):
    """
    Compute the field norm of f
    """
    # f0 is the list of even coefficient
    f0 = Polynomial(N=f.N//2)
    for i in range(f.N//2):
        f0.coeff[i] = f.coeff[2*i]
    # f1 is the list of even coefficient
    f1 = Polynomial(N=f.N//2)
    for i in range(f.N//2):
        f1.coeff[i] = f.coeff[2*i+1]
    f02 = modXnp1(f0*f0, f0.N)
    f12 = modXnp1(f1*f1, f1.N)
    xf12 = f12 * Polynomial(N=f.N, gen=True, o=1)
    Nf = f02 - xf12
    Nf.N = f.N//2
    Nf.coeff = Nf.coeff[:Nf.N]
    return Nf


def NTRUSolve(n, q, f, g):
    """
    Compute F and G satisfying f*F+g*G=q
    with f and g in Z[X]/(X^n+1)
    """
    if n == 1:
        (u, v, gcdfg) = xgcd(f, g)
        if gcdfg != 1:
            raise Exception(f"GCD(f,g) = {gcdfg} not equal 1")
            return
        Identity = Polynomial(N=1, gen=True, o=0)
        (F, G) = (Identity*q*v, Identity*q*u)
        return (F, G)
    else:
        fp = N(f)
        gp = N(g)
        (Fp, Gp) = NTRUSolve(n//2, q, fp, gp)
        Fp2 = Polynomial(N=Fp.N*2)
        for i in range(Fp.N):
            Fp2.coeff[i*2] = Fp.coeff[i]
            if i != 0:
                Fp2.coeff[i*2] *= -1
        F = modXnp1(Fp2*g, n)

        Gp2 = Polynomial(N=Fp.N*2)
        for i in range(Gp.N):
            Gp2.coeff[i*2] = Gp.coeff[i]
        G = modXnp1(Gp2*f, n)
        # (F, G) = reduce(f, g, F, G)
        return (F, G)


def longDivide(A, B, q=503):
    """
    Compute the polynomial division A = QB+R
    and return (Q, R)
    """
    Q = Polynomial(N=len(A))
    R = copy.deepcopy(A)
    for i in range(A.ord()-B.ord(), -1, -1):
        try:
            Q.coeff[i] = R.coeff[B.ord()+i] * pow(int(B.coeff[B.ord()]), -1, q)
        except ValueError:
            raise Exception(f"Can't inverse {int(B.coeff[B.ord()])} in base {q}")
        for j in range(B.ord()+i, i-1, -1):
            R.coeff[j] = (R.coeff[j] - Q.coeff[i] * B.coeff[j-i]) % q

    return (Q, R)


def randomGenPoly(N=503, d=2):
    """
    Generate a random binary polynomial of size N with d 1
    and (N-d) zeros.
    """
    p = Polynomial(N)
    c = random.sample(range(N), d)
    for e in c:
        p.coeff[e] = 1
    return p


if __name__ == "__main__":
    modul = 128
    while True:
        p = randomGenPoly(251, 73)
        print(f"P = {p}")
        try:
            q = p.inv(modul)
            print(f"P^-1 = {q}")
            print(f"P*Q = {p.star_multiply(q).mod(modul)}")
            break
        except Exception as e:
            print(e)
