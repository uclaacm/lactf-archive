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

mkdir /tmp/evmvm-solution
cat Solution.sol        | sed 's/@openzeppelin/lib\/oz/' | sed 's/.\/chall//' > /tmp/evmvm-solution/Solution.sol
cat ../chall/EVMVM.sol  | sed 's/@openzeppelin/lib\/oz/'                      > /tmp/evmvm-solution/EVMVM.sol
cat ../chall/Setup.sol  | sed 's/@openzeppelin/lib\/oz/'                      > /tmp/evmvm-solution/Setup.sol
cd /tmp/evmvm-solution

web3 contract build --evm-version=london --optimize=false Solution.sol

PARAMS=$(echo 1 | netcat lac.tf 31151)
UUID=$(echo "$PARAMS" | sed '/^uuid:/!d;s/^uuid: \+//')
export WEB3_RPC_URL=$(echo "$PARAMS" | sed '/^rpc endpoint:/!d;s/^rpc endpoint: \+//;s/http:/https:/')
export WEB3_PRIVATE_KEY=$(echo "$PARAMS" | sed '/^private key:/!d;s/^private key: \+//')
SETUP=$(echo "$PARAMS" | sed '/^setup contract:/!d;s/^setup contract: \+//')

exec 5>&1
CONTRACT=$(web3 contract deploy Solution.bin "$SETUP" |tee >(cat - >&5) | sed '/^Contract address is: /!d;s/^Contract address is: //')
exec 5<&-

for i in $(seq 0 12)
do
    web3 contract call --address "$CONTRACT" --abi Solution.abi --function solve --gas-limit=9000000 --wait $i
done

echo ""
echo -e "3\n$UUID\n" | netcat lac.tf 31151 | sed -n 's/^.\+\(lactf{\)/\1/p'
echo -e "2\n$UUID\n" | netcat lac.tf 31151 > /dev/null

rm -r --interactive=never /tmp/evmvm-solution
