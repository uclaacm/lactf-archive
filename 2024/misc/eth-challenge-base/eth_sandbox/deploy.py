import os

from . import *
from .util import getenv_or_raise

if __name__ == "__main__":
    contract_path = getenv_or_raise("LACTF_CONTRACT_PATH")
    dough = int(os.getenv("LACTF_CONTRACT_DOUGH", "0"))

    run_launcher([
        new_launch_instance_action(setup(contract_path, dough)),
        new_kill_instance_action(),
        new_get_flag_action()
    ])
