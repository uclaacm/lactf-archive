## Key observation

If you look up an ASCII table, you'll notice that all the letters from a-z share the first two bits. This means that we can force the XOR to add/subtract in a predictable manner, which we can use linearity on. You might also be able to use the oracle in a way that doesn't require this fact, but either way, linearity will be your best friend for this challenge.

## Solution

The solution relies on the fact that matrix multiplication is linear. That is, $A(v+w) = Av+Aw$. Since we control the oracle to produce something that is the flag +/- some amount, we can then subtract it from the flag to get a known amount.

Now that we can control the oracle, we need to extract enough information to recover the encrpytion matrix in 14 steps. Conveniently, there are only 13 unknown characters, so we can use 13 guesses to retrieve the restricted linear operator that encrypts the unknown section. With our last guess, we need to recover the encryption of `"lactf{             }"`. This is enough information to encrypt anything in flag format, since we can encrypt the unknown section then add the encryption of the known part to get the full encryption.

## Better Solution

Rather than applying linearity directly to the encrypted flag, we can use one guess to generate a new value to use as reference. Then, we can generate the rest of our inputs to be offsetted from the reference by a known amount. I believe there is a set of inputs you can give that allows you to fully solve the problem even if the encryption matrix is not invertible (ie no inverting matrices or solving systems necessary for the entire solution).

## Why is the solve script in this repo so jank?

The original problem was supposed to be only a medium level challenge that could be solved without the need of inverting any matrices (no Gaussian Elimination in general). Why? Gaussian elimination in finite fields is nontrivial to implement, and I wanted beginner competitors unfamiliar with Sagemath to also be able to solve the challenge. Note that hill-easy thus exhibits this behavior where no Gaussian elimination is needed.

What was the original problem? You were allowed a normal use of the oracle (no xor) and 13 uses of the xor oracle. There was a different crypto challenge intended to be our category's hard chall, but we failed to testsolve it in time. Hill-hard was thus made harder a few hours before release, and my solution recovers the encryption of "lactf{             }" first, then uses the original solve script on the easier version of the problem. To do so, it uses the multiplicative linearity of matrix multiplication. The solution is kind of obscured by the use of magic numbers here, but those numbers were generated from figuring out which multiples of "lactf{}" are actually attainable by using the oracle. Note that the only multiples that are possible share factors with 95, so an even more jank use of linearity is used to bypass this.

## Closing Remarks

Q: This writeup sucks!!

A: Yep, its not supposed to be a full writeup. I hope some of the competitors can enlighten us with their solution instead.

I doubt many competitors used my "intended solution." I believe that this challenge is actually solvable without Gaussian elimination, and if any competitor did so, please post a writeup!

For competitors who are intrigued by my solution, I encourage you to upsolve this challenge with the added stipulation that you cannot use the letters in "ctf" either.

Regardless, I hope everyone who attempted this challenge had fun. Linearity is pretty powerful. Also, I apologize to any teams who tried learning about advanced linear algebra tricks to solve this. Nothing but elementary linear algebra needed :)

