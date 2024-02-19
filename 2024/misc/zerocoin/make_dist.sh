#!/bin/sh

rm -f dist.tar.gz
tar czvf dist.tar.gz Dockerfile solve/src/lib.template.rs solve/Cargo.* server/src/ server/Cargo.* chall/src/ chall/Cargo.* zerocoin.so solve.py
