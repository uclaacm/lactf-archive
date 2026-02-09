from copy import deepcopy

puzzle = """
########
#..#####
#.....##
#oo.oo##
#..#o..#
#......#
########
""".strip().split("\n")
puzzle = [list(x) for x in puzzle]

pos = (1, 1)

inp = ""
history = []
while True:
    print(inp)
    for (i, r) in enumerate(puzzle):
        for (j, v) in enumerate(r):
            x = v
            if (i, j) == pos:
                x = "x"
            print(x, end="")
        print()
    for c in input("> "):
        if c == "z":
            (puzzle, pos, inp) = history.pop()
            continue
        elif c in ("w", "a", "s", "d"):
            (dr, dc) = {"w": (-1, 0), "s": (1, 0), "a": (0, -1), "d": (0, 1)}[c]
            (nr, nc) = (pos[0] + dr, pos[1] + dc)
            hist = (deepcopy(puzzle), pos, inp)
            if puzzle[nr][nc] == "#":
                continue
            if puzzle[nr][nc] == "o":
                (nnr, nnc) = (nr + dr, nc + dc)
                if puzzle[nnr][nnc] != ".":
                    continue
                puzzle[nnr][nnc] = "o"
                puzzle[nr][nc] = "."
            pos = (nr, nc)
            history.append(hist)
            inp += c
        else:
            print("unknown")