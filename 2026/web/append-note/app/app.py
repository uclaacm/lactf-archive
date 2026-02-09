import os, secrets
from urllib.parse import urlparse
from flask import Flask, render_template, request, make_response
import json

app = Flask(__name__)

ADMIN_SECRET = os.environ.get("ADMIN_SECRET", "password")
FLAG = os.environ.get("FLAG", "lactf{test}")
if (HOST := os.environ.get("HOST")):
    pass
elif (metadata := os.environ.get("INSTANCER_METADATA")):
    HOST = "https://" + json.loads(metadata)["http"]["app"]["4000"]
else:
    HOST = "http://localhost:4000"

SECRET = secrets.token_hex(4)
notes = [SECRET]


@app.after_request
def add_headers(response):
    response.headers["Cache-Control"] = "no-store"
    response.headers["X-Content-Type-Options"] = "nosniff"
    response.headers["X-Frame-Options"] = "deny"
    return response


@app.route("/")
def index():
    is_admin = request.cookies.get("admin") == ADMIN_SECRET
    return render_template("index.html", is_admin=is_admin, url=HOST)


@app.route("/append")
def append():
    if request.cookies.get("admin") != ADMIN_SECRET:
        return "Unauthorized", 401

    content = request.args.get("content", "")
    redirect_url = request.args.get("url", "/")

    parsed_url = urlparse(redirect_url)
    if (
        parsed_url.scheme not in ["http", "https"]
        or parsed_url.hostname != urlparse(HOST).hostname
    ):
        return f"Invalid redirect URL {parsed_url.scheme} {parsed_url.hostname}", 400

    status = 200 if any(note.startswith(content) for note in notes) else 404
    notes.append(content)

    return render_template("redirect.html", url=redirect_url), status


@app.route("/flag")
def flag():
    correct = request.args.get("secret") == SECRET
    message = FLAG if correct else "Invalid secret"
    status = 200 if correct else 401
    response = make_response(message, status)
    response.headers["Access-Control-Allow-Origin"] = "*"
    return response


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4000)
