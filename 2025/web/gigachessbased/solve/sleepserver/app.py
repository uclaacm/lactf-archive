from flask import Flask
from flask_cors import CORS
from threading import Lock, Event

import time

app = Flask(__name__)
CORS(app)
n = 0
stop_block = Event()
n_guard = Lock()

@app.get("/")
def foo():
    return "hey"

@app.get("/info")
def info():
    with n_guard:
        return {"n": n}

@app.get("/revive")
def revive():
    stop_block.clear()
    return "revive"

@app.get("/kill")
def kill():
    stop_block.set()
    return "owo"

@app.get("/sleep")
def owo():
    global n
    with n_guard:
        n += 1
        print("acquiring", n)
    # time.sleep(100000)
    stop_block.wait(100000)
    with n_guard:
        n -= 1
        print("releasing", n)
    return "foo"
