import os
import secrets
import threading
import time
from flask import Flask, render_template, request, make_response
from flask_limiter import Limiter

app = Flask(__name__)

REDIS_URL = os.environ.get('REDIS_URL', 'redis://localhost:6379')

limiter = Limiter(
    lambda: "global",
    app=app,
    storage_uri=REDIS_URL,
)

ADMIN_SECRET = os.environ.get('ADMIN_SECRET', 'password')
FLAG = os.environ.get('FLAG', 'lactf{test}')

nonces = set()
nonces_lock = threading.Lock()


def clear_nonces_periodically():
    while True:
        time.sleep(300)
        with nonces_lock:
            nonces.clear()


cleanup_thread = threading.Thread(target=clear_nonces_periodically, daemon=True)
cleanup_thread.start()

CONFIG = {
    'ADS_URL': os.environ.get('ADS_URL', 'http://localhost:9000'),
    'MIN_IFRAMES': 6,
    'MAX_IFRAMES': 12,
    'MAX_RESULTS': 3
}


@app.after_request
def add_headers(response):
    response.headers['Cache-Control'] = 'no-store'
    response.headers['Content-Security-Policy'] = f"default-src 'self'; require-trusted-types-for 'script'; trusted-types adPolicy; frame-src {CONFIG['ADS_URL']};"

    if request.path == '/guess':
        response.headers['Access-Control-Allow-Origin'] = '*'

    return response


@app.route('/')
def index():
    return render_template('search.html', config=CONFIG)


@app.route('/create')
def create():
    return render_template('create.html', config=CONFIG)


@app.route('/nonce')
@limiter.limit("1/minute")
def nonce():
    if request.cookies.get('admin') != ADMIN_SECRET:
        return 'Unauthorized', 401

    nonce_value = secrets.token_hex(4)
    with nonces_lock:
        nonces.add(nonce_value)

    return f'<p id="nonce">{nonce_value}</p>'


@app.route('/guess')
@limiter.limit("1/minute")
def guess():
    nonce_value = request.args.get('nonce', '')

    with nonces_lock:
        valid = nonce_value in nonces
        if valid:
            nonces.discard(nonce_value)

    return make_response(FLAG if valid else f'Incorrect')


@app.route('/delete')
def delete():
    if request.cookies.get('admin') != ADMIN_SECRET:
        return 'Unauthorized', 401

    nonce_value = request.args.get('nonce', '')

    with nonces_lock:
        nonces.discard(nonce_value)

    return 'OK'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4000)
