#/bin/bash

if ! [ -x "$(command -v web3)" ]
then
    echo "cannot run solve script - web3 is not installed"
    echo "install web3 with"
    echo ""
    echo "    GOBIN=/usr/local/bin go install github.com/gochain/web3/cmd/web3@latest"
    echo ""
    exit 1
fi

cd "$(dirname "$0")"

mkdir /tmp/remis-solution
cat Solution.sol        | sed 's/@openzeppelin/lib\/oz/' | sed 's/.\/chall//' > /tmp/remis-solution/Solution.sol
cat ../chall/Remis.sol  | sed 's/@openzeppelin/lib\/oz/'                      > /tmp/remis-solution/Remis.sol
cat ../chall/Setup.sol  | sed 's/@openzeppelin/lib\/oz/'                      > /tmp/remis-solution/Setup.sol
cd /tmp/remis-solution

web3 contract build --evm-version=london Solution.sol

PARAMS=$(echo 1 | netcat chall.lac.tf 31150)
UUID=$(echo "$PARAMS" | sed '/^uuid:/!d;s/^uuid: \+//')
export WEB3_RPC_URL=$(echo "$PARAMS" | sed '/^rpc endpoint:/!d;s/^rpc endpoint: \+//;s/http:/https:/')
export WEB3_PRIVATE_KEY=$(echo "$PARAMS" | sed '/^private key:/!d;s/^private key: \+//')
SETUP=$(echo "$PARAMS" | sed '/^setup contract:/!d;s/^setup contract: \+//')

web3 contract deploy Solution.bin "$SETUP"

echo ""
echo -e "3\n$UUID\n" | netcat chall.lac.tf 31150 | sed -n 's/^.\+\(lactf{\)/\1/p'
echo -e "2\n$UUID\n" | netcat chall.lac.tf 31150 > /dev/null

rm -r --interactive=never /tmp/remis-solution
