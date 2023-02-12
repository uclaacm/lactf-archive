from flask import Flask, send_from_directory, Response
import os.path

app = Flask(__name__)

@app.route('/')
@app.route('/<path:path>')
def index(path='index.html'):
    target = os.path.join("static", os.path.normpath(path))
    try:
        if "/../" not in target and len(open(target, "rb").read(1)) == 0:
            return ""
    except OSError:
        pass
    resp = send_from_directory('static', path)
    resp.headers['Source-Control-Management-Type'] = 'Mercurial-SCM'
    return resp

@app.errorhandler(404)
def page_not_found(e):
    return send_from_directory('static', '404.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)
