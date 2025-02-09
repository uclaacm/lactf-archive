from flask import Flask, request, make_response, send_from_directory, Response
import os
import jwt

app = Flask(__name__, static_url_path="", static_folder="static")
app.secret_key = "1B7075A30ADA0B9ECBCBFD0FCF15886C3E52518CF073B433BCD5583E8D536A80"

stages = {
    "B218B51749AB9E4C669E4B33122C8AE3": (0, "A token in the HTML source code..."),
    "66E7AEBA46293C88D484CDAB0E479268": (1, "A token in the JavaScript console..."),
    "5D1F98BCEE51588F6A7500C4DAEF8AD6": (2, "A token in the stylesheet..."),
    "29D3065EFED4A6F82F2116DA1784C265": (3, "A token in javascript code..."),
    "9D34859CA6FC9BB8A57DB4F444CDAE83": (4, "A token in a header..."),
    "BF1E1EAA5C8FDA6D9D0395B6EA075309": (5, "A token in a cookie..."),
    "647E67B4A8F4AA28FAB602151F1707F2": (6, "A token where the robots are forbidden from visiting..."),
    "3FB4C9545A6189DE5DE446D60F82B3AF": (7, "A token where Google is told what pages to visit and index..."),
    "F1C20B637F1B78A1858A3E62B66C3799": (8, "A token received when making a DELETE request to this page..."),
    "32BFBAEB91EFF980842D9FA19477A42E": (9, "A token in a TXT record at i-spy.chall.lac.tf..."),
    "7227E8A26FC305B891065FE0A1D4B7D4": (10, "A Flag! lactf{1_sp0773d_z_t0k3ns_4v3rywh3r3}"),
}

def encode_token(value):
    return jwt.encode({'value': value}, app.secret_key, algorithm='HS256')

def decode_token(token):
    try:
        decoded = jwt.decode(token, app.secret_key, algorithms=['HS256'])
        return decoded['value']
    except:
        return None

@app.route("/")
def root():
    return send_from_directory('static', 'index.html')

@app.route("/api/suggestion", methods=['POST'])
def suggestion():
    form_value = request.form.get('stage_token', '').upper()
    cookie_token = request.cookies.get("stage_token", None)
    cookie_value = decode_token(cookie_token) if cookie_token else None
    #print(form_value, cookie_value, flush=True)
    if form_value and form_value in stages:
        if cookie_value and (stages[cookie_value][0] != stages[form_value][0] - 1 and stages[cookie_value][0] != stages[form_value][0] and stages[form_value][0] != 0):
            return {"error": "That's not what I was spying!", "suggestion": stages[cookie_value][1]}
        r = make_response({"suggestion": stages[form_value][1]})
        r.set_cookie("stage_token", encode_token(form_value), httponly=True, samesite='Strict')
        return r
    if cookie_value and cookie_value in stages:
        if form_value and form_value != "":
            return {"error": "Invalid token", "suggestion": stages[cookie_value][1]}
        return {"suggestion": stages[cookie_value][1]}
    if not form_value or form_value == "":
        return {"suggestion": "This token: B218B51749AB9E4C669E4B33122C8AE3"}
    return {"error": "Invalid token", "suggestion": "This token: B218B51749AB9E4C669E4B33122C8AE3"}

@app.after_request
def add_header(res: Response):
    res.headers["X-Token"] = "BF1E1EAA5C8FDA6D9D0395B6EA075309"
    if res.content_type != "application/json":
        res.headers["Cache-Control"] = "max-age=600"

    return res

@app.delete("/")
@app.delete("/<path:path>")
def delete_endpoint(path=None):
    return "You DELETED MY WEBSITE!!!!! HOW DARE YOU????? 32BFBAEB91EFF980842D9FA19477A42E"

if __name__ == "__main__":
    app.run(debug=True)