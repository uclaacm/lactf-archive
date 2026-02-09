#!/usr/bin/env python3

import os
from pathlib import Path
import shutil
import stat
import subprocess
import sys

# find default linker
cc = os.environ.get("CC") or shutil.which("cc") or "/usr/bin/cc"

if "-Wl,--lto-emit-asm" not in sys.argv:
  os.execv(cc, [cc] + sys.argv[1:])
else:
  cwd = os.path.dirname(os.path.realpath(__file__))

  shutil.rmtree(cwd + "/target/save", ignore_errors=True)
  os.mkdir(cwd + "/target/save")

  emit_lto_asm_cmd = sys.argv.copy()
  emit_lto_asm_cmd[0] = cc
  emit_binary_cmd = sys.argv.copy()
  emit_binary_cmd[0] = shutil.which("clang") or "/usr/bin/clang"
  emit_binary_cmd_output = None

  # save temporary linker input files that cargo deletes after this command
  for i in range(len(sys.argv)):
    if sys.argv[i].endswith(".rcgu.o"):
      # input
      saved_rcgu = os.path.abspath(cwd + "/target/save/reflection.rcgu.o")
      shutil.copy2(sys.argv[i], saved_rcgu)
      emit_lto_asm_cmd[i] = saved_rcgu
      emit_binary_cmd[i] = os.path.abspath(cwd + "/target/save/reflection.lto.s")
    elif sys.argv[i].endswith("raw-dylibs"):
      # dylibs folder (which turns out to be empty)
      saved_dylibs = os.path.abspath(cwd + "/target/save/raw-dylibs")
      shutil.copytree(sys.argv[i], saved_dylibs)
      emit_lto_asm_cmd[i] = emit_binary_cmd[i] = saved_dylibs
    elif i > 0 and sys.argv[i - 1] == "-o":
      # output
      emit_lto_asm_cmd[i] = os.path.abspath(cwd + "/target/save/reflection")
      emit_binary_cmd_output = sys.argv[i]
  
  # write the final build script for convience
  emit_binary_cmd.remove("-Wl,--lto-emit-asm")
  with open(cwd + "/target/save/build.sh", "w") as f:
    f.write(f'{emit_binary_cmd[0]} \\\n')
    for arg in emit_binary_cmd[1:-1]:
      f.write(f"  {arg} \\\n")
    f.write(f"  {emit_binary_cmd[-1]}\n")
    f.write(f"cp {emit_binary_cmd_output} {cwd + "/target/x86_64-unknown-linux-gnu/release/reflection"}\n")
  reflection_sh_for_chmod = Path(cwd + "/target/save/build.sh")
  reflection_sh_for_chmod.chmod(reflection_sh_for_chmod.stat().st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH)

  # run ld.lld with --lto-emit-asm
  ret = subprocess.Popen(emit_lto_asm_cmd).wait()
  if ret != 0:
    sys.exit(ret)

  # run final build script
  os.execv(emit_binary_cmd[0], emit_binary_cmd)
