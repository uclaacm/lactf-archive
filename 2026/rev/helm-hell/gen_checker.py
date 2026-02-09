#!/usr/bin/env python3
"""
Generate a Brainfuck program that checks if input matches a given string.
Outputs "true" if match, "false" if not.
"""

FLAG = "lactf{t4k1ng_7h3_h3lm_0f_h31m_73mp14t3s}"

def gen_value_in_place(n, temp_offset=1):
    """
    Generate BF code to set current cell to n.
    Uses cell at temp_offset as temporary, leaves pointer at original cell.
    """
    if n == 0:
        return ""
    if n < 15:
        return "+" * n

    # Find best a*b decomposition
    best_a, best_b = 1, n
    best_score = n
    for a in range(2, 20):
        for b in range(2, 20):
            if a * b <= n:
                remainder = n - a * b
                score = a + b + abs(remainder)
                if score < best_score:
                    best_score = score
                    best_a, best_b = a, b

    remainder = n - best_a * best_b
    # Pattern: set temp to a, loop: add b to current, dec temp
    # >+++[<++++>-]< for a=3, b=4, result=12 in original cell
    code = ">" * temp_offset  # go to temp
    code += "+" * best_a      # temp = a
    code += "["               # while temp
    code += "<" * temp_offset # go to target
    code += "+" * best_b      # add b to target
    code += ">" * temp_offset # go back to temp
    code += "-"               # dec temp
    code += "]"               # end while
    code += "<" * temp_offset # back to target
    if remainder > 0:
        code += "+" * remainder
    elif remainder < 0:
        code += "-" * (-remainder)
    return code


def gen_print_char(n, temp_offset=1):
    """Generate code to print char n and clear the cell, using temp at offset."""
    return gen_value_in_place(n, temp_offset) + ".[-]"


def gen_print_string(s, temp_offset=1):
    """Generate BF code to print a string from current (empty) cell."""
    code = ""
    for ch in s:
        code += gen_print_char(ord(ch), temp_offset)
    return code


# Memory layout:
# c0: expected value / working cell
# c1: input value
# c2: match flag (1 = matching, 0 = mismatch)
# c3: temp for branching
# c4: temp for printing
# c5+: more temp

code = ""

# Initialize c2 = 1 (assume matching)
code += ">>+<<"  # set c2=1, ptr at c0

for ch in FLAG:
    expected = ord(ch)

    # Generate expected value in c0 (using c1 as temp)
    code += gen_value_in_place(expected, temp_offset=1)

    # Read input to c1
    code += ">,"  # go to c1, read input

    # Now subtract c0 from c1 to compare
    # We want: if c0 == c1, result is 0; else nonzero
    # Pattern: c0[-c1-c0] leaves c0=0, c1=c1-c0
    code += "<"  # go to c0
    code += "[->-<]"  # subtract c0 from c1

    # Now c0=0, c1=c1-original_c0
    # If c1 != 0, set c2 = 0 (mismatch)
    code += ">"  # go to c1
    code += "[>[-]<[-]]"  # if c1 nonzero: clear c2, clear c1

    # Go back to c0 for next iteration
    code += "<"

# Now at c0, c2 has result (1=match, 0=mismatch) but we haven't checked length yet
# Try to read one more char - if input has extra chars, fail
# Read to c1
code += ">,"  # go to c1, read (will be 0 if EOF, or next char if input too long)
# If c1 is non-zero, input is too long -> clear c2
code += "[>[-]<[-]]"  # if c1 nonzero: clear c2 (fail), clear c1
code += "<"  # back to c0

# Now at c0, c2 has final result (1=match, 0=mismatch)
# Print "true" or "false"

code += ">>"  # go to c2

# if-else pattern using c3
code += ">+<"  # c3=1, at c2

# if c2 (match): print true, clear c3
code += "["
code += ">-<"  # c3=0
code += "-"    # c2=0
code += ">>>"  # go to c5
code += gen_print_string("true", temp_offset=1)
code += "<<<"  # back to c2
code += "]"

# if c3 (no match was printed): print false
code += ">"  # go to c3
code += "["
code += "-"  # c3=0
code += ">>"  # go to c5
code += gen_print_string("false", temp_offset=1)
code += "<<"  # back to c3
code += "]"

print(code)
