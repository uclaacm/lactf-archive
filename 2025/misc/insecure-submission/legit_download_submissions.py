import requests
from typing import Optional

def download_submissions(base_url: str, class_name: str, userid: str) -> None:
    submission_id = 1
    
    for i in range(1800):
        url = f"{base_url}/submissions"
        params = {
            "class": class_name,
            "userid": userid,
            "submissionid": submission_id
        }
        
        try:
            response = requests.get(url, params=params)
            if response.status_code == 404:
                print(f"Finished at submission_id {submission_id}")
                
            
            # response.raise_for_status()
            print(f"Downloaded submission {submission_id} - Status: {response.status_code}")
            # Do something with the response data here
            # For example: response.text or response.json()
            
        except requests.RequestException as e:
            print(f"Error downloading submission {submission_id}: {e}")
            break
            
        submission_id += 1

if __name__ == "__main__":
    base_url = "http://localhost:8000"
    class_name = "cs31"
    userid = "100000040"
    
    download_submissions(base_url, class_name, userid)