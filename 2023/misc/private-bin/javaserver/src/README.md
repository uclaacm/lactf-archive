# Bin

Original source: [https://github.com/Scarsz/Bin](https://github.com/Scarsz/Bin)

This version is specific to LA CTF and is NOT production ready. Do NOT use it inor as a real application.

Bin is an AES 128/256-bit encrypted, GitHub Gists-inspired, anonymous
pastebin. All data on the server is encrypted such that the operators
of the server have no knowledge of what data is stored on it. This
tool was designed to be a replacement for my old debug information
server that [DiscordSRV](https://github.com/DiscordSRV/DiscordSRV)
uses. The problem with the old system was that while I am by no means
a malicious actor, it raises a security concern that I was in
possession of lots of debug information from the plugin and the
servers using it, all in plain text. I don't really like that and
I don't think it's fair to server owners either thus Bin was made.

# How it works
When DiscordSRV or any other client uploads to Bin, it uploads the
data after it's already been encrypted. The client just sends the
encrypted data, without the key. It's the client's responsibility
to make sure the encrypted data is able to be decrypted properly
as the server has no way of knowing the contents of anything on it.
When data is uploaded, the server gives back the bin UUID- the view
URL is in the format `https://host/UUID#KEY`.

#### Notice how the key is after a `#`.
This is how you're able to have a URL that includes the decryption
key without exposing the key to the server. Browsers don't send
anything after `#` in URLs because that information is only really
used for telling the browser to show a given element on the page.
The cool part about that though is that the browser's JavaScript
engine has access to this data and thus the decryption key. This lets
the browser fetch the encrypted data from the server and decrypt it
itself.

# Developers
Bin exposes a few endpoints that're useful if you're making a client.
**Be sure to set a proper user agent.**
```
GET /UUID.(json|xml) -> /api/UUID.(json|xml)
GET /api/UUID.(json|xml) -> /[latest API]/UUID.(json|xml)
GET /v1/UUID.(json|xml) -> JSON or XML dump of the bin data

POST /post
{
    // when generating the 16 or 32-byte key, only use alphanumeric characters
    // you can technically use whatever bytes you want in the key but that will restrict the bin to custom clients only
    // when encrypting data, it should be in the format "initializationVector[0-15]encryptedData[16...]"
    // in other words, the "encrypted data" should be the IV plus the actual encrypted data
    // and please- do not use the same IV for every encryption. it should be randomly generated for every encryption.

    "description": base64(aes("optional bin description")),
    "expiration": -43200, // optional expiration in minutes; negative number = minutes since creation,
                          //                                 positive number = minutes since last access
    "files": [
        {
            "name": base64(aes("file-name.txt")),
            "content": base64(aes("file content")),
            "description": base64(aes("optional file description")),
            "type": base64(aes("MIME type- if not defined, view page defaults to application/octet-stream"))
        },
        ...
    ]
}
```

# Contributing
I'm not the best at front end design. If you want to add some visual
improvements to Bin's UI, feel free to make a pull request.
