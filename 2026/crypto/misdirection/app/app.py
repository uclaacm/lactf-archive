import os

# https://github.com/Taumille/NTRUSign
from NTRUSign import KeyGenerator, NTRU
import threading

from flask import Flask, make_response, request, send_from_directory, jsonify
from Crypto.Util.number import long_to_bytes

N_BOUND = 545

app = Flask(__name__, static_url_path="", static_folder="static")

flag = os.environ.get("FLAG", "lactf{fakeflag}")

ready_status = {"status": False}
zero_signature = None


# generate keys and set up some initial data
# this is time-consuming
def setup():
    global NTRUKeys, current_count, zero_signature, signature_cache, ready_status

    current_count = 0

    NTRUKeys = KeyGenerator.KeyPair(gen=True, B=1)

    # Sign the initial count (0) so that client can use it
    (_, r, s) = NTRU.Signing(NTRUKeys, long_to_bytes(current_count), N_BOUND)
    zero_signature = NTRU.export_signature(r, s, N_BOUND, False)

    signature_cache = {zero_signature: 0}

    ready_status["status"] = True


setup_thread = threading.Thread(target=setup)
setup_thread.start()


@app.post("/grow")
def grow():
    global current_count, signature_cache, ready_status, N_BOUND

    if not ready_status["status"]:
        return jsonify({"msg": "Please wait!"})

    request_body = request.get_json()
    client_count = request_body["count"]
    count_sig = request_body["sig"]

    # limit to 4 count
    if current_count < 4 and client_count == current_count:
        if count_sig in signature_cache and signature_cache[count_sig] == client_count:
            verif = True
        else:
            try:
                r, s = NTRU.import_signature(count_sig)
                verif = NTRU.Verifying(
                    long_to_bytes(client_count), r, s, N_BOUND, NTRUKeys
                )
            except Exception:
                verif = False
        if verif:
            current_count += 1

            # sign the new number
            ready_status["status"] = False
            (_, r, s) = NTRU.Signing(NTRUKeys, long_to_bytes(current_count), N_BOUND)
            ready_status["status"] = True
            new_count_sig = NTRU.export_signature(r, s, N_BOUND, False)
            signature_cache[new_count_sig] = current_count
            if current_count >= 4:
                return jsonify(
                    {
                        "msg": f"Snake has grown to length {current_count}. It is too long and does not have any more food.",
                        "count": current_count,
                        "signature": new_count_sig,
                    }
                )
            return jsonify(
                {
                    "msg": f"Snake has grown to length {current_count}",
                    "count": current_count,
                    "signature": new_count_sig,
                }
            )
        else:
            return jsonify(
                {
                    "msg": "Invalid signature!",
                    "count": current_count,
                    "signature": "null",
                }
            )

    return jsonify(
        {
            "msg": "Snake does not have enough food to grow!",
            "count": current_count,
            "signature": "null",
        }
    )


@app.post("/flag")
def get_flag():
    global current_count, ready_status

    if not ready_status["status"]:
        return jsonify({"msg": "Please wait!"})

    # flag costs 14 grows
    # snake must reach full length
    if current_count >= 14:
        current_count -= 14
        return jsonify({"msg": f"Flag: {flag}", "count": current_count})

    return jsonify({"msg": "Snake isn't long enough!", "count": current_count})


# reset the challenge (don't need to restart instance)
@app.get("/regenerate-keys")
def regenerate_keys():
    global ready_status
    ready_status["status"] = False
    setup()
    ready_status["status"] = True
    return jsonify({"msg": "Successfully Reset Challenge"})


@app.get("/zero-signature")
def get_zero_signature():
    global zero_signature

    return jsonify({"signature": zero_signature})


@app.get("/public-key")
def get_public_key():
    global NTRUKeys

    return jsonify({"public-key": NTRUKeys.export_pub()})


@app.get("/current-count")
def get_count():
    global current_count

    return jsonify({"count": current_count})


@app.get("/")
def index():
    resp = make_response(send_from_directory(app.static_folder, "index.html"))
    return resp


@app.get("/status")
def status():
    global ready_status

    return jsonify(ready_status)


if __name__ == "__main__":
    app.run("0.0.0.0", 8000, threaded=True, debug=True)
