import sympy
import random
from dataclasses import dataclass

random.seed(31337)

flag = b"lactf{is_the_three_body_problem_np_hard}"
n = len(flag) * 8
bits = []
for c in flag:
    for i in range(8):
        bits.append((c >> i) & 1)
xs = sympy.symbols([f"x{i}" for i in range(n)])
truths = [x if b else ~x for (b, x) in zip(bits, xs)]

l = n // 2
k = 3

terms = [random.sample(range(n), l) for _ in range(k - 1)]
included = set(x for t in terms for x in t)
assert n - len(included) <= l
last_term = list(set(range(n)) - included)
last_term += random.sample(list(included), l - len(last_term))
terms.append(last_term)
for t in terms:
    t.sort()
    assert len(t) == len(set(t)) == l

decoys = [random.sample(range(n), l) for _ in range(k)]

def dummy(i):
    bit = random.randrange(2)
    if bit:
        return ~xs[i]
    return xs[i]

exprs = []
for (term, decoy) in zip(terms, decoys):
    term_expr = sympy.And(*(truths[t] for t in term))
    decoy_expr = sympy.And(*(dummy(t) for t in decoy))
    exprs.append(term_expr | decoy_expr)

final_expr = sympy.And(*exprs)
m = sympy.satisfiable(final_expr, all_models=True)
assert next(m) == {b: v for (b, v) in zip(xs, bits)}
assert next(m, None) is None

type Term = Literal | And | Or
type Constraints = list[list[Literal]]

@dataclass
class Counter:
    count: int

    def get(self) -> int:
        ret = self.count
        self.count += 1
        return ret

@dataclass
class Literal:
    idx: int
    flipped: bool

    def flip(self) -> Literal:
        return Literal(self.idx, not self.flipped)

    def to_3sat(self, cons: Constraints, cnt: Counter) -> Literal:
        return self

@dataclass
class And:
    arg1: Term
    arg2: Term

    def to_3sat(self, cons: Constraints, cnt: Counter) -> Literal:
        lit = Literal(cnt.get(), False)
        v1 = self.arg1.to_3sat(cons, cnt)
        v2 = self.arg2.to_3sat(cons, cnt)
        cons += [[v1.flip(), v2.flip(), lit], [v1, lit.flip()], [v2, lit.flip()]]
        return lit

@dataclass
class Or:
    arg1: Term
    arg2: Term

    def to_3sat(self, cons: Constraints, cnt: Counter) -> Literal:
        lit = Literal(cnt.get(), False)
        v1 = self.arg1.to_3sat(cons, cnt)
        v2 = self.arg2.to_3sat(cons, cnt)
        cons += [[v1, v2, lit.flip()], [v1.flip(), lit], [v2.flip(), lit]]
        return lit

def sympy_to_term(expr) -> Term:
    match expr:
        case sympy.And() | sympy.Or():
            if isinstance(expr, sympy.And):
                cons = And
            else:
                cons = Or
            arglist = [sympy_to_term(t) for t in expr.args]
            random.shuffle(arglist)
            cur = arglist[0]
            for t in arglist[1:]:
                cur = cons(cur, t)
            return cur
        case sympy.Not() | sympy.Symbol():
            if isinstance(expr, sympy.Not):
                expr = expr.args[0]
                assert isinstance(expr, sympy.Symbol)
                flipped = True
            else:
                flipped = False
            return Literal(xs.index(expr), flipped)
    raise ValueError("how did we get here")

constraints: Constraints = []
ctr = Counter(n)
final = sympy_to_term(final_expr).to_3sat(constraints, ctr)
assert all(len(c) <= 3 for c in constraints)

ys = sympy.symbols([f"y{i}" for i in range(ctr.count)])
def literal_to_y(l: Literal):
    ret = ys[l.idx]
    if l.flipped:
        ret = ~ret
    return ret

remapped = list(range(ctr.count))
random.shuffle(remapped)
new_constraints = [[Literal(remapped[l.idx], l.flipped) for l in c] for c in constraints]
new_final = Literal(remapped[final.idx], final.flipped)

check_expr = sympy.And(*(sympy.Or(*(literal_to_y(l) for l in t)) for t in new_constraints)) & literal_to_y(new_final)
m = sympy.satisfiable(check_expr, all_models=True)
sol = next(m)
for (i, v) in enumerate(bits):
    assert sol[ys[remapped[i]]] == v
assert next(m, None) is None

with open("solve.txt", "w") as f:
    f.write("".join("01"[sol[y]] for y in ys) + "\n")

with open("consts.h", "w") as f:
    f.write(f"""
#define NBITS {ctr.count}
#define OUTBIT {new_final.idx}
#define NFLAGBITS {n}
const int flagbits[NFLAGBITS] = {{{",".join(str(remapped[i]) for i in range(n))}}};
""".strip() + "\n")

with open("logic.h", "w") as f:
    s = "&".join("(" + "|".join(f"{"!" if l.flipped else ""}B({l.idx})" for l in c) + ")" for c in new_constraints)
    f.write(f"""
bool compute() {{
    return {s};
}}
""".strip() + "\n")
