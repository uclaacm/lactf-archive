from flask import Flask, send_file, request
from user_agents import parse

app = Flask(__name__)

def is_browser(user_agent_string):
    """Check if the user agent appears to be from a real browser"""
    if not user_agent_string:
        return False

    user_agent = parse(user_agent_string)

    # Return True only if it's a real browser (not a bot, not a library, not a crawler)
    return user_agent.is_pc or user_agent.is_mobile or user_agent.is_tablet

@app.route('/')
def index():
    user_agent = request.headers.get('User-Agent', '')

    if is_browser(user_agent):
        # Serve the real challenge to browsers
        return send_file('index.html')
    else:
        # Serve the fake page to non-browser clients
        return send_file('fake-index.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
