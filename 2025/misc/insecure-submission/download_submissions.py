import urllib.request
import urllib.parse
import urllib.error
from typing import Optional

def download_submissions(base_url: str, class_name: str, userid: str) -> None:
    submission_id = 0
    
    while True:
        import time
        time.sleep(0.2)
        submission_id += 1

        params = urllib.parse.urlencode({
            "class": class_name,
            "userid": userid,
            "submissionid": submission_id
        })
        url = f"{base_url}/submissions?{params}"
        
        try:
            with urllib.request.urlopen(url) as response:
                print(f"Downloaded submission {submission_id} - Status: {response.status}")
                # Do something with the response data here
                # For example: response.read().decode('utf-8')
                
        except urllib.error.HTTPError as e:
            if e.code == 404:
                print(f"Finished at submission_id {submission_id}")
                break
            elif e.code == 400:
                print(f"Submission no access {submission_id}")
                continue

            print(f"anError downloading submission {submission_id}: {e}")
            break
        except urllib.error.URLError as e:
            print(f"Error downloading submission {submission_id}: {e}")
            break
            

if __name__ == "__main__":
    base_url = "http://localhost:8000"
    class_name = "cs35l"
    userid = "100000064"
    
    download_submissions(base_url, class_name, userid)