#!/usr/local/bin/python
print("Hi! It's nice to meet you! Thank you for volunteering to do my homework for me!")
import re
import tempfile
import sys
import os
from git import Repo, GitCommandError
from dotenv import load_dotenv
import requests
import gnupg
import time
import random
import subprocess
load_dotenv()  # Load environment variables from .env file

# Move gpg directory into a location where it can read and write
subprocess.run(["cp", "-r", "/gpghome", "/tmp/gpg"])

def get_repo_name(url):
    # Check if the URL is a valid GitHub URL
    pattern = r'^https://github\.com/hSlprTOAYPBNXtWfIUWiofKsniDLYsPq/(la-ctf-2025-[0-9]{1,2}-[0-9a-zA-Z-]{1,39})(?:\.git)?$'
    res = re.match(pattern, url)
    if not res:
        print("That's not a valid GitHub URL! It needs to be one from my assignment, and only put the url to the base repository - nothing else! Like https://github.com/hSlprTOAYPBNXtWfIUWiofKsniDLYsPq/your-repo-name")
        return False
    return res.group(1)

def clone_repo(url, temp_dir):
    try:
        # Use environment variable for GitHub token
        token = os.getenv('GITHUB_TOKEN')
        if not token:
            print("GITHUB_TOKEN environment variable not set")
            return False
            
        # Modify URL to include authentication
        auth_url = url.replace('https://', f'https://oauth2:{token}@')
        Repo.clone_from(auth_url, temp_dir)
        return True
    except GitCommandError as e:
        print("Erm, I couldn't clone your repository. Did something happen?")
        # print(e)
        return False

def check_commits(temp_dir):
    expected_first_commits = ["65cae7375d78a761de410eff2f32514892bb37b8", "b06dfc6a6ee5c6e8a55a0332e2d1a574887e494a", "4cd4675abd4c1297189861a60982ec4ba4cea249", "d0f6f74c8465283a3e54d4ecc482e5b8d7276ebb", "0f028e2fb0b2369db0194939cceffc2747600b14", "329428bb3c3be9ce85ac0304f67e98fb46a7aa49", "5c64515ff404b60ebde313363efe669c8f8d4a77", "37e69b5d49536bb7f92f053a6b03833243e622ab", "dcd9afeb31bba2257978ec9db2e26ba0d14c99d9", "76258e05f2514f886eb32489ffd889df99493642"]
    has_first_commit = False
    try:
        repo = Repo(temp_dir)
        expected_author = "66690702+github-classroom[bot]@users.noreply.github.com"
        
        for commit in repo.iter_commits():
            # Check author email
            if commit.author.email != expected_author:
                print(f"Hey! Commit {commit.hexsha} is not by github classroom!")
                return False
            # Verify signature using git command through repo.git

            sig_check1 = repo.git.execute(['git', 'log', "--show-signature"], with_extended_output=True)
            # print(sig_check1)
            try:

                sig_check = repo.git.execute(['git', 'verify-commit', commit.hexsha, "--raw"], with_extended_output=True)
            except GitCommandError:
                print(f"Uhh commit {commit.hexsha} didn't verify. Are you sure it's verified by github.com's signing key?")
                return False
            # print("Sig:", sig_check)

            sig_check = sig_check[2]
            
            if "GOODSIG B5690EEEBB952194" not in sig_check or "KEY_CONSIDERED 968479A1AFF927E37D1A566BB5690EEEBB952194" not in sig_check:
                print(f"Hey! Commit {commit.hexsha} isn't verified!")
                return False
            if commit.hexsha in expected_first_commits:
                has_first_commit = True
        
        if not has_first_commit:
            print(f"Hey! That's not my assignment! Don't overwrite the original assignment creation commit >:(")
                
        return True
        
    except GitCommandError as e:
        print("Something weird happened - I could't check your commits.")
        print(e)
        return False


def verify_commit_id(repo_url, expected_id):
    try:
        # Extract owner and repo name from GitHub URL
        parts = repo_url.split('/')
        repo_name = parts[-1].replace('.git', '')
        owner = parts[-2]
        
        # Use GitHub API to verify commit
        token = os.getenv('GITHUB_TOKEN')
        headers = {'Authorization': f'token {token}'}


            
        # Get default branch HEAD commit SHA from API
        api_url = f'https://api.github.com/repos/{owner}/{repo_name}'
        branch_response = requests.get(api_url, headers=headers)
        if branch_response.status_code != 200:
            #print("b")
            return False
        


        default_branch = branch_response.json()["default_branch"]


        if len(default_branch) > 30:
            print("That branch name is too long - just stick with main, ok?")
            return False
        api_url = f'https://api.github.com/repos/{owner}/{repo_name}/commits/{default_branch}'
        
        response = requests.get(api_url, headers=headers)
        if response.status_code != 200:
            #print("a")
            return False
        #print("Should be:", response.json()["sha"])
        return response.json()["sha"].lower() == expected_id.lower()
        
    except Exception as e:
        print("An unknown error occurred while attempting to get the repo.")
        #print(e)
        return False

def main():
    url = input("What's your GitHub repository URL?\n").strip()
    
    if get_repo_name(url) == False:
        sys.exit(1)
    
    head_commit_id = input("Cool, now just to make sure, what's the 40-character commit ID of the latest commit in your repository?\n").strip()
    if not re.match(r"^[0-9a-fA-f]{40}$", head_commit_id):
        print("Um, not sure what that is, but that definitely isn't a commit ID. Make sure it's exactly 40 characters, like fc111db4bd09be492f9ff0d81ca55143689067c6")
        sys.exit(1)
    print("Ok, lemme look for your repository...")
    time.sleep(random.random() * 2)
    if not verify_commit_id(url, head_commit_id):
        print("Uhh I can't find your repo. Either the repo does not exist or the head commit ID was wrong.")
        sys.exit(1)
    with tempfile.TemporaryDirectory() as temp_dir:
        print("Found it! Now, let me download and check your repo...")
        if not clone_repo(url, temp_dir):
            sys.exit(1)
        



        if check_commits(temp_dir):
            print("Oh hey your commits are correct, now let's see if the assignment is completed...")
        else:
            print("Repository contains invalid commits!")
            sys.exit(1)
            
        # Check README.md content
        readme_path = os.path.join(temp_dir, 'README.md')
        if not os.path.exists(readme_path):
            print("Um, what happened to README.md? I don't see it!")
            sys.exit(1)
            
        with open(readme_path, 'r') as f:
            content = f.read()
            if "LA CTF 2025 is the best ctf." not in content:
                print("You didn't complete the assignment! README.md does not contain exactly 'LA CTF 2025 is the best ctf.'!")
                sys.exit(1)
            if get_repo_name(url) not in content:
                print(f"You didn't complete the assignment! README.md does not contain exactly '{get_repo_name(url)}'!")
                sys.exit(1)
            # print(get_repo_name(url))

    print(f"TYSM! Fine, here's your flag: {os.getenv("FLAG")}")
            


if __name__ == "__main__":
    main()
