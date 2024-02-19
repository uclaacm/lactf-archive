from .util import getenv_or_raise

def get_shared_secret():
    # LA CTF: don't allow the default shared secret
    return getenv_or_raise("SHARED_SECRET")
