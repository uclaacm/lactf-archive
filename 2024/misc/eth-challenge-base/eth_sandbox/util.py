import os

def getenv_or_raise(key: str):
    x = os.getenv(key)
    if x is not None:
        return x
    else:
        raise f"No {key} set!"
