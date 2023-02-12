#!/bin/sh
tar -czvf dist.tar.gz --exclude='server/target' --exclude='chall/target' server chall solve.py Dockerfile sailor.so
