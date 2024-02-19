# QuickStyle

Idea:
1. user can put any html on page with csp of no script and inline style
2. js removes all style tags

Expected Solve:
1. dom clobber to prevent js from removing style tags
2. use a variant of [3-combo](https://www.sonarsource.com/blog/code-vulnerabilities-leak-emails-in-proton-mail/#multiple-requests-per-element-crossfade) to leak a one-time password

See `solve/README.md` for more detailed solve.
