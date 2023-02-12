import json
import os
import time
from dataclasses import dataclass
from typing import Callable, Dict, List, Optional
from uuid import UUID
from pathlib import Path

import requests
from eth_account import Account
from web3 import Web3
from web3.exceptions import TransactionNotFound
from web3.types import TxReceipt

from eth_sandbox import get_shared_secret
from .util import getenv_or_raise

HTTP_PORT = os.getenv("HTTP_PORT", "8545")
PUBLIC_IP = os.getenv("PUBLIC_IP", "127.0.0.1")

FLAG = getenv_or_raise("FLAG")

Account.enable_unaudited_hdwallet_features()


@dataclass
class Action:
    name: str
    handler: Callable[[], int]


def sendTransaction(web3: Web3, tx: Dict) -> Optional[TxReceipt]:
    if "gas" not in tx:
        tx["gas"] = 10_000_000

    if "gasPrice" not in tx:
        tx["gasPrice"] = 0

    txhash = web3.eth.sendTransaction(tx)

    while True:
        try:
            rcpt = web3.eth.getTransactionReceipt(txhash)
            break
        except TransactionNotFound:
            time.sleep(0.1)

    if rcpt.status != 1:
        raise Exception("failed to send transaction")

    return rcpt


def check_uuid(uuid) -> bool:
    try:
        UUID(uuid)
        return uuid
    except (TypeError, ValueError):
        return None


def setup(contract_path: str, value: int = 0) -> Callable[[Web3, str, str], str]:
    def action(web3: Web3, deployer_address: str, _: str) -> str:
        rcpt = sendTransaction(web3, {
            "from": deployer_address,
            "value": Web3.toWei(value, 'ether'),
            "data": json.loads(Path(contract_path).read_text())["bytecode"]["object"],
        })
        return rcpt.contractAddress
    return action


def new_launch_instance_action(
    do_deploy: Callable[[Web3, str], str],
):
    def action() -> int:
        data = requests.post(
            f"http://127.0.0.1:{HTTP_PORT}/new",
            headers={
                "Authorization": f"Bearer {get_shared_secret()}",
                "Content-Type": "application/json",
            },
        ).json()

        if data["ok"] == False:
            print(data["message"])
            return 1

        uuid = data["uuid"]
        mnemonic = data["mnemonic"]

        deployer_acct = Account.from_mnemonic(
            mnemonic, account_path=f"m/44'/60'/0'/0/0")
        player_acct = Account.from_mnemonic(
            mnemonic, account_path=f"m/44'/60'/0'/0/1")

        web3 = Web3(Web3.HTTPProvider(
            f"http://127.0.0.1:{HTTP_PORT}/{uuid}",
            request_kwargs={
                "headers": {
                    "Authorization": f"Bearer {get_shared_secret()}",
                    "Content-Type": "application/json",
                },
            },
        ))

        setup_addr = do_deploy(
            web3, deployer_acct.address, player_acct.address)

        with open(f"/tmp/{uuid}", "w") as f:
            f.write(
                json.dumps(
                    {
                        "uuid": uuid,
                        "mnemonic": mnemonic,
                        "address": setup_addr,
                    }
                )
            )

        port_for_display = "" if HTTP_PORT == "80" else ":" + HTTP_PORT
        print()
        print(f"your private blockchain has been deployed!")
        print(f"it will automatically terminate in 1 hour")
        print(f"here's some useful information")
        print()
        print(f"uuid:           {uuid}")
        print(f"rpc endpoint:   https://{PUBLIC_IP}{port_for_display}/{uuid}")
        print(f"private key:    {player_acct.privateKey.hex()}")
        print(f"setup contract: {setup_addr}")
        return 0

    return Action(name="launch new instance", handler=action)


def new_kill_instance_action():
    def action() -> int:
        uuid = check_uuid(input("uuid please: "))
        if not uuid:
            print("invalid uuid!")
            return 1

        data = requests.post(
            f"http://127.0.0.1:{HTTP_PORT}/kill",
            headers={
                "Authorization": f"Bearer {get_shared_secret()}",
                "Content-Type": "application/json",
            },
            data=json.dumps(
                {
                    "uuid": uuid,
                }
            ),
        ).json()

        print(data["message"])
        return 1

    return Action(name="kill instance", handler=action)


def is_solved_checker(web3: Web3, addr: str) -> bool:
    result = web3.eth.call(
        {
            "to": addr,
            "data": web3.sha3(text="isSolved()")[:4],
        }
    )
    return int(result.hex(), 16) == 1


def new_get_flag_action(
    checker: Callable[[Web3, str], bool] = is_solved_checker,
):
    def action() -> int:
        uuid = check_uuid(input("uuid please: "))
        if not uuid:
            print("invalid uuid!")
            return 1

        try:
            with open(f"/tmp/{uuid}", "r") as f:
                data = json.loads(f.read())
        except:
            print("bad uuid")
            return 1

        web3 = Web3(Web3.HTTPProvider(
            f"http://127.0.0.1:{HTTP_PORT}/{data['uuid']}"))

        if not checker(web3, data['address']):
            print("are you *really* sure you solved it?")
            return 1

        print(FLAG)
        return 0

    return Action(name="acquire flag", handler=action)


def run_launcher(actions: List[Action]):
    for i, action in enumerate(actions):
        print(f"{i+1} - {action.name}")

    action = None
    try:
        action = int(input("action? ")) - 1
        if action < 0 or action >= len(actions):
            raise
    except:
        print("that's not a valid action lmao")
        exit(1)

    exit(actions[action].handler())
