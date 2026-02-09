from flask import Flask, session, request, redirect, render_template
import os
import yaml
import re
import string
from pathlib import Path
import mistune

app = Flask(__name__)
app.secret_key = os.urandom(16).hex()

EMAIL_RE = re.compile(
    r"^[A-Za-z0-9.!#$%&'*+/=?^_`{|}~-]+@"
    r"[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?"
    r"(?:\.[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)+$"
)

users = dict()

blog_path = Path(__file__).parent / "blogs"
blog_path.mkdir(exist_ok=True)

def is_valid_email(email: str) -> bool:
    return bool(EMAIL_RE.match(email))

def display_name(username: str) -> str:
    return "".join(p.capitalize() for p in username.split("_"))

def validate_conf(old_cfg: dict, uploaded_conf: str) -> dict | str:
    try:
        conf = yaml.safe_load(uploaded_conf)

        # validate all blog entries
        for i, blog in enumerate(conf["blogs"]):
            if not isinstance(blog.get("title"), str):
                return f"please provide a 'title' to the {i+1}th blog"

            # no lfi
            file_name = blog["name"]
            assert isinstance(file_name, str)
            file_path = (blog_path / file_name).resolve()
            if "../" in file_name or file_name.startswith("/") or not file_path.is_relative_to(blog_path):
                return f"file path {file_name!r} is a hacking attempt. this incident will be reported"

        # recover from missing display name/passwords with sane default of old one
        if not isinstance(conf.get("user"), dict):
            conf["user"] = dict()

        conf["user"]["name"] = display_name(conf["user"].get("name", old_cfg["user"]["name"]))
        conf["user"]["password"] = conf["user"].get("password", old_cfg["user"]["password"])
        if not isinstance(conf["user"]["password"], str):
            return "provide a valid password bro"
        return conf
    except Exception as e:
        return f"exception - {e}"


@app.get("/")
def index():
    if "username" not in session:
        return redirect("/login")
    return render_template("index.html")


@app.get("/login")
def serve_login():
    return render_template("login.html")


@app.get("/config")
def get_config_yaml():
    if "username" not in session:
        return redirect("/login")
    return yaml.dump(users[session["username"]]), 200


@app.post("/config")
def update_config():
    config = request.form.get("config")
    if config is None:
        return "give a config..."
    if "username" not in session:
        return redirect("/login")

    validated_config = validate_conf(users[session["username"]], config)

    # this means there was an error in validation - return err string
    if isinstance(validated_config, str):
        return validated_config, 400

    # update the user conf if it is valid
    users[session["username"]] = validated_config

    return redirect("/")


@app.get("/blog/")
def serve_user_personal_blog():
    if "username" not in session:
        return redirect("/login")
    return redirect("/blog/" + session["username"])

@app.get("/blog/<string:username>")
def serve_blog(username):
    if username not in users:
        return "username does not exist", 404
    blogs = [
        {"title": blog["title"], "content": mistune.html((blog_path / blog["name"]).read_text())}
        for blog in users[username]["blogs"]
    ]
    return render_template("blog.html", blogs=blogs, name=users[username]["user"]["name"])

@app.post("/blog")
def upload_blog():
    if "username" not in session:
        return redirect("/login")

    title = request.form.get("title")
    blog_content = request.form.get("blog")
    filename = session["username"] + "_blog_" + os.urandom(8).hex() + ".md"
    filepath = blog_path / filename

    # TODO - do validation on title / blog content

    filepath.write_text(blog_content)
    users[session["username"]]["blogs"].append({"title": title, "name": filename})

    return redirect("/")

@app.post("/register")
def register():
    username = request.form.get("username")
    password = request.form.get("password")

    # TODO - add inp validation

    initial_conf = {"user": {"name": display_name(username), "password": password}, "blogs": []}

    users[username] = initial_conf

    session["username"] = username

    return redirect("/")


@app.post("/login")
def login():
    username = request.form.get("username")
    password = request.form.get("password")

    # TODO - add inp validation

    user = users.get(username)
    if user is None:
        return "user does not exist", 400

    if password != user["user"]["password"]:
        return "invalid password", 400

    session["username"] = username

    return redirect("/home")


if __name__ == "__main__":
    app.run("0.0.0.0", 3000, debug=True)
