#!/usr/bin/env python3
# Solve script for cats challenge
# The primes are ~100 bits each, so n is ~200 bits
# This is easily factorable using online tools like https://www.alpertron.com.ar/ECM.HTM

import socket

def solve(host, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((host, port))

    # Handle proof of work
    pow_data = b""
    while b"solution:" not in pow_data:
        pow_data += s.recv(4096)

    pow_text = pow_data.decode()
    print(pow_text)

    # User runs the curl command and pastes the solution
    solution = input()
    s.sendall((solution + "\n").encode())

    # Receive all the initial output
    data = b""
    while b"How many treats" not in data:
        data += s.recv(4096)

    text = data.decode()

    # Parse n, e, c from the output
    n, e, c = None, None, None
    for line in text.split("\n"):
        if line.startswith("n = "):
            n = int(line.split(" = ")[1])
        elif line.startswith("e = "):
            e = int(line.split(" = ")[1])
        elif line.startswith("c = "):
            c = int(line.split(" = ")[1])

    print(f"n = {n}")
    print(f"e = {e}")
    print(f"c = {c}")
    print()
    print("Factor n using https://www.alpertron.com.ar/ECM.HTM or another tool, then enter one of the primes:")
    try:
        p = int(input("p = "))
    except ValueError:
        print("Invalid input for p.")
        s.close()
        return

    q = n // p

    if p * q != n:
        print("Error: p does not divide n evenly!")
        s.close()
        return

    print(f"q = {q}")

    # Compute private key
    phi = (p - 1) * (q - 1)
    d = pow(e, -1, phi)

    # Decrypt
    m = pow(c, d, n)
    print(f"Decrypted: {m}")

    # Send answer
    s.sendall((str(m) + "\n").encode())

    # Get flag
    response = b""
    while True:
        chunk = s.recv(4096)
        if not chunk:
            break
        response += chunk

    print(response.decode())
    s.close()

if __name__ == "__main__":
    import sys
    if len(sys.argv) == 3:
        solve(sys.argv[1], int(sys.argv[2]))
    else:
        solve("chall.lac.tf", 31224)
