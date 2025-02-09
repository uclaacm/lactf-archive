# Purell

Parts:

1. unfiltered
2. no script
3. no onerror
4. lowercase => replace `<script>` and `on*` with `''`
5. forbid `>`
6. forbid whitespace
7. forbid parenthesis


Note: many competitors were having issues when using `img src=x onerror=CODE` tags. The issue is that this tag causes a fetch to `/level/x`, which the admin bot is then redirected to `/level/start`, and since (on every level except the first) the admin bot's cookie does not match, the cookie is cleared, so if the code instead of using like `document.body.innerHTML`,  re-fetches the page with `fetch(/level/level5)` or something, the cookie is then unset for this fetch request.