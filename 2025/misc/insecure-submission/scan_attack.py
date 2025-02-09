import urllib.request
import urllib.parse
import urllib.error
import random

def try_userid(userid):
    base_url = "http://localhost:8000/submissions"
    params = {
        "class": "cs31",
        "userid": str(userid)
    }
    
    url = f"{base_url}?{urllib.parse.urlencode(params)}"
    
    try:
        with urllib.request.urlopen(url) as response:
            content = response.read().decode('utf-8')
            if "invalid user ID" not in content:
                print(f"Found possible valid ID {userid}: {content}")
                return True
        return False
    except urllib.error.URLError as e:
        print(f"Error making request: {e}")
        return False

def main():
    # Try IDs from 1 to 10000
    for userid in range(100000000, 100001000):
        try_userid(userid)

if __name__ == "__main__":
    main()