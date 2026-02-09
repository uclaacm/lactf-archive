## How to build code
You can refer to the dockerfile file, but essentially
1. `python[3] install.py --deps --tool --ot --zk`
2. `cd emp-zk`
3. `make`

You may need to use sudo

this should build the binaries needed. In order to communicate with the server you can just use
`./bin/test_arith_client`

The code is adapted from `emp-toolkit` https://github.com/emp-toolkit