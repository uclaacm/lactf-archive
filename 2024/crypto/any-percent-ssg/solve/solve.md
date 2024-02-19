
# any% ssg
Check out this new open-source version of Minecraft my friend is making! They started working on it yesterday, but I want to speedrun it before anyone else can ... can you find me a seed that makes the end portal complete?

Send your seed to the netcat connection to get the flag.

Author Writeup by AVDestroyer

## Acknowledgements

This challenge was heavily inspired by [Matthew Bolan](https://www.youtube.com/channel/UCB4XuRBJZBOpnoJSWekMohw) on YouTube, and his Minecraft seedfinding series. Huge thanks to him for making these videos -- they are super interesting! My writeup will closely follow the seed-finding process described in his videos. The background section is based off of these videos, but please watch them to completely understand the math -- he explains it very well, and goes in much more depth than this writeup! He also makes a lot of other really cool speedrunning/seedfinding content.

## Background and math
This challenge relies on the weaknesses of LCGs (Linear Congruential Generators) to generate random numbers. Our ultimate goal is to generate 16 random numbers from the LCG that all satisfy an inequality. Using lattices, this becomes quite easy! All other details of the PRNG are fairly trivial to deal with and will not be discussed until the end of the writeup.

Upon reading the source code, we see that to fill every eye in the end portal (and therefore be able to complete the game), we need to call `CustomRandom.nextLong()` 16 times, and each of these calls needs to produce a value that is greater than `(9 * (1L << 52)/10L)`. `CustomRandom` is a class that implements a custom RNG, specifically an LCG (Linear Congruential Generator), with known parameters: a multiplier `a`, an increment `c`, and a modulo `m`. An LCG is a random number generator that stores a certain state, and every time the `nextLong()` method is called, the state is modified to `(a*state + c) % m` and then returned.

LCGs are very insecure to generate cryptographically secure random numbers, but we aren't doing cryptography here, so what's the issue? It turns out that we can exploit the *linearity* of LCG outputs (that is, their outputs are often linearly dependent to each other) to find a seed for the LCG that satisfies the inequalities  described above. 

Let's define the problem: we want to determine a seed $s$ for the LCG that satisfies the following inequalities, allowing us to fill 16 eyes in the end portal:

```math
\displaylines{
min_0 \leq s \leq max_0 \\
min_1 \leq LCG(s) \leq max_1 \\
min_2 \leq LCG(LCG(s)) \leq max_2 \\
\cdots \\
min_{n-2} \leq LCG(LCG(\cdots (s))) \leq max_{n-2} \\
min_{n-1} \leq LCG(LCG(LCG(\cdots (s)))) \leq max_{n-1}
}
```

Where $n$ is the number of consecutive calls to the LCG used to fill eyes (in this case, 16). $min_i$ is the lowest possible value of `r.nextLong()` that allows an eye to be filled, specifically `9 * (1L << 52)//10 + 1`, and $max_i$ is the maximum value that allows an eye to be filled, specifically `m-1` (the only bound on the maximum is the one imposed by the modulo in the LCG).

First, we will establish some formulas to describe applying an LCG $n$ times in the forward direction, or 1 time in the reverse direction. If we start at a seed $s_0$, and then apply $s = LCG(s)$ to the seed $n$ times, then our final value $s_f$ will be:

$s_f \equiv a^n s_0 + c\left(\frac{a^n - 1}{a - 1} \right) \left( \text{mod} \ m \right)$

Likewise, if we have a seed $s$, and we want to determine which seed $r$ exists such that $s = LCG(r)$, we can invert the operation of the LCG:

$r \equiv a^{-1} \left(s - c \right) \left(\text{mod} \ m\right)$

Where $a^{-1}$ denotes the modular inverse.

We can now write the inequalities as inequalities on vectors (this notation isn't very accurate but essentially, the inequality must be satisfied element-wise for the vectors).

```math
\begin{bmatrix}
min_0 \\ min_1 \\ \vdots \\ min_{n-2} \\ min_{n-1}
\end{bmatrix} 
\leq 
\begin{bmatrix}
\left(a^0 seed_0 + c \left( \frac{a^0 - 1}{a - 1} \right) \right) \text{mod} \ m \\ \left(a^1 seed_0 + c \left( \frac{a^1 - 1}{a - 1} \right) \right) \text{mod} \ m \\ \vdots \\ \left(a^{n-2} seed_0 + c \left( \frac{a^{n-2} - 1}{a - 1} \right) \right) \text{mod} \ m \\ \left(a^{n-1} seed_0 + c \left( \frac{a^{n-1} - 1}{a - 1} \right) \right) \text{mod} \ m
\end{bmatrix} 
\leq
\begin{bmatrix}
max_0 \\ max_1 \\ \vdots \\ max_{n-2} \\ max_{n-1}
\end{bmatrix} 
```

This equation is a bit imprecise still (specifically, the modulos being inside the inequality). We can make the equation more mathematically sound as follows:

```math
\begin{bmatrix}
min_0 \\ min_1 \\ \vdots \\ min_{n-2} \\ min_{n-1}
\end{bmatrix} 
\leq 
\begin{bmatrix}
a^0 seed_0 + c \left( \frac{a^0 - 1}{a - 1} \right) \\ a^1 seed_0 + c \left( \frac{a^1 - 1}{a - 1} \right) + k_1m \\ \vdots \\ a^{n-2} seed_0 + c \left( \frac{a^{n-2} - 1}{a - 1} \right) + k_{n-2}m \\ a^{n-1} seed_0 + c \left( \frac{a^{n-1} - 1}{a - 1} \right) + k_{n-1}m
\end{bmatrix} 
\leq
\begin{bmatrix}
max_0 \\ max_1 \\ \vdots \\ max_{n-2} \\ max_{n-1}
\end{bmatrix} 
```

Note that we could include at $k_0m$ for the first inequality, but the first inequality simplifies to $min_0 \leq seed_0 + k_0m \leq max_0$, and since we know that $seed_0$ itself should satisfy the inequality, $k_0$ would be 0. Therefore, we have a system of $n$ inequalities in $n$ integer variables ($seed_0$, $k_1$ to $k_{n-1}$).  Also note that determining a value for $seed_0$ is our goal, as the successive LCG outputs can be determined from it. We can then write the middle vector, $\hat{v}$, as $\hat{v} = \mathbf{A}\hat{x} + \hat{b}$, where

```math
\mathbf{A} = \begin{bmatrix}
a^0  & 0 & 0 &  \cdots & 0 \\ a^1 & m & 0 & \cdots & 0 \\ a^2 & 0 & m & \cdots & 0\\ \vdots & \vdots & \vdots & \ddots & \vdots \\ a^{n-1} & 0 & 0 & \cdots & m  
\end{bmatrix} , \hat{x} = \begin{bmatrix}
seed_0 \\ k_1 \\ k_2 \\ \vdots \\ k_{n-1}
\end{bmatrix}, \hat{b} = \begin{bmatrix}
c\left(\frac{a^0-1}{a-1}\right) \\ c\left(\frac{a^1-1}{a-1}\right) \\ \vdots \\ c\left(\frac{a^{n-1}-1}{a-1}\right)
\end{bmatrix} = \begin{bmatrix}
0 \\ c\left(1\right) \\ c\left(a + 1\right) \\ c \left(a^2 + a + 1\right) \\ \vdots \\ c\left(a^{n-1} + a^{n-2} + \cdots + a + 1\right)
\end{bmatrix}
```

Also, let the vector of minimum values be $\hat{min}$ and the vector of maximum values be $\hat{max}$. Then, we have the following inequality:

$\hat{min} - \hat{b} \leq \mathbf{A}\hat{x} \leq \hat{max} - \hat{b}$

Note that $\hat{x}$ must be an integer vector. Therefore, our goal is to find an *integer* linear combination of the column vectors of $\mathbf{A}$ that lies inside the $n$-dimensional rectangular prism defined by $\hat{min} - \hat{b}$ and $\hat{max} - \hat{b}$, because inequalities on vectors are done component-wise.

Since we are considering integer linear combinations of the column vectors of $\mathbf{A}$, these vectors are the basis of a lattice! However, it's not so obvious how we can find a lattice point inside an $n$-dimensional rectangular prism with an arbitrary basis. There are some linear programming techniques to do so, but I will follow the steps taken in Matthew Bolan's video.

What we *can* do is apply the inverse transformation of $\mathbf{A}$, $\mathbf{A^{-1}}$, to this lattice. This will give us a new lattice with unit basis vectors, and a transformed search region. The unit basis vectors are very helpful, as now all we have to do is find any *integer* point inside the transformed search region. The new search region will not be a rectangular prism, however. If we apply the transformation, we instead get a *parallelotope* in $n$ dimensions, with opposite vertices $\mathbf{A^{-1}}\left(\hat{min} - \hat{b}\right)$ and $\mathbf{A^{-1}}\left(\hat{max} - \hat{b}\right)$. Note that these two vertices do not completely define the parallelotope; we need to know the other vertices of the parallelotope to completely define it. Determining these vertices is not difficult, but it is also not necessary as we will see.

The problem with this transformation is that the transformed parallelotope is very narrow. The column vectors of $\mathbf{A}$ tend to be very long and non-orthogonal (for lack of a better word). This means that when we apply the transformation $\mathbf{A^{-1}}$, the resulting edges of the parallelotope will also be very non-orthogonal -- the angles are small. This makes the parallelotope itself very narrow, so it would be quite difficult to find a lattice point inside of it. You can check Matthew Bolan's video series to understand this principle visually.

Again, our goal is to find integer points inside of the parallelotope after taking some inverse transformation on our lattice. But can we use a different transformation? Any basis of the lattice defined by $\mathbf{A}$ should work to give us unit basis vectors, and we can find a basis of short and nearly orthogonal vectors using the [LLL algorithm](https://en.wikipedia.org/wiki/Lenstra%E2%80%93Lenstra%E2%80%93Lov%C3%A1sz_lattice_basis_reduction_algorithm)! This algorithm is useful all over the place in cryptography, and it is also quite useful in this "integer linear programming" scenario. LLL gives us a new lattice basis of very short and nearly orthogonal vectors; let's let $\mathbf{A_L}$ contain the basis vectors as its columns. Then, we can apply the transformation $\mathbf{A_L^{-1}}$, and look for points inside the new parallelotope. This time, however, the parallelotope will have much larger angles between its edges -- it will be wider. This makes finding lattice points inside of it much easier.

There are several ways to locate lattice points inside of an $n$-dimensional polytope, and these ways mostly involve linear programming algorithms. The process and the ideas of the algorithms are explained more thoroughly in Matthew Bolan's videos. However, for our purposes, we don't really need to use them. Since our parallelotope is wide enough, we can locate the center of the parallelotope, and brute-force search integer points close to that center. It is highly likely that some of these points lie inside of the parallelotope (although I can't say anything about whether this method finds *every* integer point in the parallelotope -- I would think that this method would miss some valid seeds). 

Therefore, we calculate the midpoint $\hat{c}$ of the parallelotope by taking the average of its two endpoints (note that the endpoints were simply $\hat{min}$ and $\hat{max}$ before the transformation). Therefore, $\hat{c} = \frac{1}{2}\left(\mathbf{A_L^{-1}}\left(\hat{min} - \hat{b}\right) + \mathbf{A_L^{-1}}\left(\hat{max} - \hat{b}\right)\right)$. There are $2^n$ points to brute force for $n$ dimensions, since we can either round up or down to the nearest integer coordinate in each dimension. Once we have a test integer vector $\hat{t}$, we determine if it is located in the parallelotope by transforming back into our original lattice and seeing if it satisfies the inequalities (equivalently, if it is located in the $n$-dimensional rectangular prism, which is much easier to check than checking if a point is located inside an arbitrary polytope). This means we check $\hat{min} - \hat{b} \leq \mathbf{A_L}\hat{t} \leq \hat{max} - \hat{b}$. 

If $\hat{w} = \mathbf{A_L}\hat{t}$ satisfies the inequality, then that vector is a valid integer linear combination of the column vectors of $\mathbf{A}$ that is located inside the $n$-dimensional rectangular prism. Therefore, $\hat{v} = \hat{w} + \hat{b}$ is a valid value of $\mathbf{A}\hat{x} + \hat{b}$ for some integer vector $\hat{x}$ that satisfies every inequality -- this vector itself is the list of $n$ seeds produced by the LCG that satisfy our target inequality! We are finished!

## Solving the challenge

We will follow the process described above to solve the challenge. Our solve script is here. We use the parameters `n = 16`, `m = 1 << 52`, `a = 2760624790958533`, and `c = 4164880461924199`. There are a few important things to note, however.

- SageMath does LLL a bit weirdly, and in order to determine an LLL-reduced basis for the column vectors of $\mathbf{A}$, we need to write `A.transpose().LLL().transpose()`
- When we examine the game code, we see that `r.nextLong()` is called 26 times to create circles and determine x and y-coordinates of the end portal. These calls happen before any calls relating to an inequality needing to be satisfied. Therefore, we need to reverse the LCG a total of 27 times (if we didn't call `r.nextLong()` at all before the inequalities, we would still need to reverse the LCG once to determine the start seed). We know how to reverse an LCG as described in the previous section.
- Additionally, when inputting a seed to the LCG using the `setSeed` method (which the game uses to store the user-input seed), the input seed is XORed by `i = 3473400794307473`, and then stored in the LCG. Therefore, once we reverse the LCG, we need to XOR by `i` again, to determine the seed that the user must enter.

## Some math notes/speculation

- The probability of satisfying any of the one inequalities on any one random given seed is $\frac{1}{10}$. Therefore, assuming independence (this assumption is doing a lot of work and is probably not accurate), the probability of satisfying all 16 inequalities on any given seed is $\frac{1}{10^{16}}$. Therefore, the expected value of number of brute force attempts would be $10^{16}$, and likewise the expected number of valid solutions out of a space of $2^{52}$ seeds would be less than 1 ($10^{16} > 2^{52}$)
	- The fact that we did find a solution means that we already found more than the "expected value" of solutions". Again, the *true* expected value of solutions is probably higher since assuming independence is very dubious. However, I don't think it can be that much higher, and therefore there shouldn't be *many* more solutions than the one our solve script naively found. Correct me if you do find other solutions though; I would love to see them!
- If we brute force through every possible seed, we can determine if they satisfy the inequalities in $O(1)$ time. Therefore, our brute force would be on the order of $2^{52}$, which is a bit less than $10^{16}$ but still very large.
	- Actually, we know the first seed is between $\frac{9}{10} * 2^{52}$, and teams informed me that they found 2 working seeds. This means that roughly, the expected value of your search space is going to be $2^{48}$, which is still very large and I wouldn't think you can brute force that.
 	- But I know that a few teams had some insane compute clusters so I guess you could actually brute force for the seed? Unlucky I guess.

## Flag
`lactf{c0ngr4ts_0n_th3_w0rld_r3c0rd}`


