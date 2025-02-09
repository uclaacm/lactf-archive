import threading
import requests
import random
import time

def load_user_agents(filename='user-agents.txt'):
    with open(filename, 'r') as f:
        return [line.strip() for line in f if line.strip()]

def make_request(user_agent, user_id):
    real_user_id = user_id
    time.sleep(random.uniform(0, 1200))
    # Assign random IP in 10.X range to each user agent
    source_ip = f'10.{random.randint(0,254)}.{random.randint(0,254)}.{random.randint(1,254)}'
    classes_taking = [random.choice(["cs31", "cs32", "cs33", "cs35l"])]
    if "cs31" in classes_taking and random.randint(0, 10) == 1:
        classes_taking.append("cs35l")

    elif "cs32" in classes_taking and random.randint(0, 4) == 1:
        classes_taking.append("cs35l")

    elif "cs33" in classes_taking and random.randint(0, 4) == 1:
        classes_taking.append("cs35l")

    new_session = True
    chosen_class = random.choice(classes_taking)
    path = None

    while True:
        
        # Sleep random time between 1-5 seconds
        time.sleep(random.uniform(3, 10))

        # Sleep for a long time randomly
        if random.random() < 0.1:
            time.sleep(random.uniform(120, 1200))
            # Get a new IP address with probability 0.05
            if random.uniform(0, 1) < 0.05:
                source_ip = f'10.{random.randint(0,254)}.{random.randint(0,254)}.{random.randint(1,254)}'
                print(f"New IP for user {user_id}: {source_ip}")
            # Get a new user agent with probability 0.05
            if random.uniform(0, 1) < 0.05:
                user_agent = random.choice(load_user_agents())
                print(f"New UA for user {user_id}: {user_agent}")
            chosen_class = random.choice(classes_taking)
            new_session = True


        headers = {'User-Agent': user_agent, "X-forwarded-for": source_ip}
        
        try:

            if path is not None and random.random() < -1:
                # Simulate submitting a file
                files = {'file': ('submission.txt', 'print("Hello World!")')}
                # randomly "typo" the user id
                if random.random() < 0.1:
                    # Change one digit of the 9 digits in user_id
                    user_id = str(real_user_id)
                    wrong_pos = random.randint(0, 8)
                    user_id = user_id[:wrong_pos] + str(random.randint(0, 9)) + user_id[wrong_pos+1:]
                    user_id = int(user_id)

                submit_url = f'http://localhost:8000/submit?class={chosen_class}&userid={user_id}'
                response = requests.post(submit_url, headers=headers, files=files)
                print(f"Submission made for {chosen_class} - Status: {response.status_code}")
                if user_id != real_user_id:
                    user_id = real_user_id
                    time.sleep(random.uniform(1, 5))
                    submit_url = f'http://localhost:8000/submit?class={chosen_class}&userid={user_id}'
                    response = requests.post(submit_url, headers=headers, files=files)
                    print(f"TYPO FIX Submission made for {chosen_class} - Status: {response.status_code}")
                path = f"{chosen_class}&page=submissions&userid={user_id}"
                time.sleep(random.uniform(1, 5))
            elif new_session and random.random() < 0.25:
                path = None
            else:
                path = chosen_class
                if random.random() < 0.95:
                    path += "&page=" + random.choice(["assignments", "syllabus", "homework", "past_exams", "recordings", "slides", "submit", "submissions", "office_hours", "la_worksheets", "faq", "guides", "connecting_to_seasnet", "resources", "projects", "readings", "homework", "homework", "homework", "homework", "homework", "homework", "homework", "submit", "submit", "submit", "submissions", "submissions", "submissions"])
                    if "submissions" in path or "connecting_to_seasnet" in path:
                        path += f"&userid={user_id}"




            url = f'http://localhost:8000?class={path}' if path is not None else 'http://localhost:8000'
            response = requests.get(url, headers=headers)
            print(f"Request made with UA: {user_agent[:30]}... Status: {response.status_code}")
        except Exception as e:
            print(f"Error making request: {e}")
        new_session = False
        if path and "submit" in path:
            path = "POST"
        else:
            path = None


def main():
    user_agents = load_user_agents()
    threads = []
    potential_ids = list(range(100000000, 100099999))
    random.seed(42)  # Set random seed for reproducibility
    random_remove = random.sample(potential_ids, len(potential_ids) // 4)
    potential_ids = [id for id in potential_ids if id not in random_remove]
    random.seed(time.time())  # Reset random seed to current time
    # Create and start 1000 threads, one for each UA
    for ua in user_agents:
        userid = random.choice(potential_ids)
        potential_ids.remove(userid)
        t = threading.Thread(target=make_request, args=[ua, userid])
        t.daemon = True
        t.start()
        threads.append(t)
    
    # Keep main thread running
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\nStopping traffic generator...")

if __name__ == "__main__":
    main()