import os
from PIL import Image

cwd = os.path.dirname(os.path.realpath(__file__))

# udlr
operations: dict[str, list[tuple[tuple[int, int, int, int], tuple[int, int]]]] = {
  "dr": [((0, 0, 8, 8), (0, 0))],
  "dlr": [((8, 0, 8, 8), (0, 0))],
  "dl": [((16, 0, 8, 8), (0, 0))],
  "udr": [((0, 8, 8, 8), (0, 0))],
  "udlr": [((8, 8, 8, 8), (0, 0))],
  "udl": [((16, 8, 8, 8), (0, 0))],
  "ur": [((0, 16, 8, 8), (0, 0))],
  "ulr": [((8, 16, 8, 8), (0, 0))],
  "ul": [((16, 16, 8, 8), (0, 0))],

  "d": [((0, 0, 4, 8), (0, 0)), ((20, 0, 4, 8), (4, 0))],
  "ud": [((0, 8, 4, 8), (0, 0)), ((20, 8, 4, 8), (4, 0))],
  "u": [((0, 16, 4, 8), (0, 0)), ((20, 16, 4, 8), (4, 0))],

  "r": [((0, 0, 8, 4), (0, 0)), ((0, 20, 8, 4), (0, 4))],
  "lr": [((8, 0, 8, 4), (0, 0)), ((8, 20, 8, 4), (0, 4))],
  "l": [((16, 0, 8, 4), (0, 0)), ((16, 20, 8, 4), (0, 4))],
}
assert len(operations) == 2**4 - 1

costumes = []

for ty in ["dirt", "snow"]:
  with Image.open(os.path.join(cwd, f"legally-distinct-{ty}.png")) as src:
    assert src.size == (24, 24)

    for name, ops in operations.items():
      out = Image.new("RGBA", (8, 8), color=((0, 0, 0, 0)))
      for (box, paste) in ops:
        out.paste(im=src.crop((box[0], box[1], box[0] + box[2], box[3] + box[1])), box=paste)
    
      this_costume = f"costumes/tile/{ty}-{name}.png"
      costumes.append(f'"{this_costume}"')

      with open(os.path.join(cwd, f"../src/{this_costume}"), "wb") as dst:
        out.save(dst)
    
print(f"costumes " + ', '.join(costumes) + ";")
