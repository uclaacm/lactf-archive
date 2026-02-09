#!/bin/bash
shopt -s globstar
set -e

cd "$(dirname "$0")"
mkdir -p build
[ -f build/reflection ] && rm build/reflection

pushd .
cd ../stage2-src
mvn
popd

RUSTC_SYSROOT=$(rustc --print sysroot)
cc \
  -m64 \
  src/reflection.S -I src -I split \
  -o build/reflection \
  -B "$RUSTC_SYSROOT/lib/rustlib/x86_64-unknown-linux-gnu/bin/gcc-ld" \
  -L "$RUSTC_SYSROOT/lib/rustlib/x86_64-unknown-linux-gnu/lib" \
  -Wl,--as-needed \
  -Wl,-Bstatic lib/libcompiler_builtins.rlib \
  -Wl,-Bdynamic -lgcc_s -lutil -lrt -lpthread -lm -ldl -lc \
  -Wl,--eh-frame-hdr \
  -Wl,-z,noexecstack \
  -Wl,-plugin-opt=O3,-plugin-opt=mcpu=x86-64 \
  -Wl,--gc-sections \
  -pie \
  -Wl,-z,relro,-z,now \
  -Wl,-O1 \
  -Wl,--strip-debug \
  -Werror \
  -nodefaultlibs

llvm-dwarfdump --debug-frame build/reflection > build/llvm-dwarfdump.txt
readelf --debug-dump=frames build/reflection > build/gnu-dwarfdump.txt

set +e
# RUST_BACKTRACE=full gdb -ex run --args build/reflection 'lactf{sike_this_is_actually_a_pumber_reference}'
export RUST_BACKTRACE=full
build/reflection 'lactf{'
build/reflection 'lactf{                                        }'
build/reflection 'lactf{si                                      }'
build/reflection 'lactf{sike_this_is_`ctually_a_pumber_reference}'
build/reflection 'lactf{sike_this_is_actually_a_pumber_reference}'
