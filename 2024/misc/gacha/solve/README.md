# Gacha

## Credits

* thanks to Arnav and Alex for telling me how to solve the challenge
* thanks to Michelle and Helena for teaching me genshin ships

## Solution

We are given two images encrypted with imagemagick's encipher functionality. This encipher applies a symmetric encryption to only the pixels of the image so it still renders when viewed.

On imagemagick docs, we see following comment regarding the encipher:
> ImageMagick uses the AES cipher in Counter mode. We use the first half of your passphrase to derive the nonce. The second half is the cipher key. When used correctly, AES-CTR provides a high level of confidentiality. To avoid information leaks, you must use a fresh passphrase for each image your encrypt.
> -- <https://imagemagick.org/script/cipher.php>

This means that if we xor the pixels, we get the xor of the two original images. We can run `python3 xor.py chall/owo.png chall/uwu.png flag.png` to get a `flag.png` which we can read the flag from.
