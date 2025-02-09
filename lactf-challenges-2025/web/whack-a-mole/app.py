from flask import Flask, session, request, redirect, render_template
import os
import random as rng
from cryptography.fernet import Fernet
from flask.sessions import SessionInterface, SecureCookieSessionInterface
from itsdangerous import URLSafeTimedSerializer
from itsdangerous.encoding import base64_decode, base64_encode

flag = os.environ.get("FLAG", "lactf{owo_uwu}")

app = Flask(__name__, static_folder="static")
app.secret_key = os.urandom(32).hex()

key = Fernet.generate_key()
f = Fernet(key)

class EncryptedSerializer(URLSafeTimedSerializer):
    def load_payload(self, payload, *args, serializer = None, **kwargs):
        encrypted = base64_decode(payload)
        decrypted = f.decrypt(encrypted)
        return super().load_payload(decrypted, *args, serializer, **kwargs)

    def dump_payload(self, obj):
        decrypted = super().dump_payload(obj)
        encrypted = f.encrypt(decrypted)
        return base64_encode(encrypted)

# impl yoinked from https://github.com/pallets/flask/blob/f61172b8dd3f962d33f25c50b2f5405e90ceffa5/src/flask/sessions.py#L317
class EncryptedSessionInterface(SecureCookieSessionInterface):
    def get_signing_serializer(self, app):
        if not app.secret_key:
            return None

        keys: list[str | bytes] = [app.secret_key]

        return EncryptedSerializer(
            keys,  # type: ignore[arg-type]
            salt=self.salt,
            serializer=self.serializer,
            signer_kwargs={
                "key_derivation": self.key_derivation,
                "digest_method": self.digest_method,
            },
        )

app.session_interface = EncryptedSessionInterface()


@app.post("/login")
def login():
    name = str(request.form.get("username"))
    funny_num = int(request.form.get("funny"))
    password = bytes((ord(ch) + funny_num) % 128 for ch in flag).decode()
    session["username"] = name
    session["sudopw"] = password
    return redirect("/game")


@app.post("/whack")
def whack():
    if "username" not in session:
        return {"err": "login pls"}

    if session["username"] == session["sudopw"]:
        return {"win": True}

    return {"mole": rng.randrange(5), "win": False}

@app.get("/")
def index():
    return render_template("index.html")

@app.get("/game")
def game():
    if "username" not in session:
        return redirect("/")
    return render_template("game.html", username=session["username"])


if __name__ == "__main__":
    app.run("0.0.0.0", 8000, debug=True)
