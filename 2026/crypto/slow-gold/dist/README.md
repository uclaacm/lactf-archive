## How to build code
You can refer to the dockerfile file (it builds the server file but the process is the same), but essentially
1. `python[3] install.py --deps --tool --ot --zk`
2. `cd emp-zk`
3. `make`

you may need to use sudo

this should build the binaries needed. In order to communicate with the server you can just use
`./bin/test_arith_client`

The server code is in `emp-zk/test/arith/chall.cp`. The client code is `emp-zk/test/arith/client.cpp`

The code is adapted from `emp-toolkit` https://github.com/emp-toolkit