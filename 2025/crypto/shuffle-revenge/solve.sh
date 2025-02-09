#!/bin/bash
rm -rf solve_runs
mkdir solve_runs

for i in {1..15}; do
  ( 
    sage solve.sage ${1:-} 2>&1 | tee solve_runs/output_$i.log | grep -E "lactf{.+}" 
  ) &
done
wait
