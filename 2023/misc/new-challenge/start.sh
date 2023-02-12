#!/bin/sh

# Checking permissions and fixing SGID bit in repos folder
# More info: https://github.com/jkarlosb/git-server-docker/issues/1
if [ "$(ls -A /git-server/repos/)" ]; then
  cd /git-server/repos
  chmod -R ug+rX .
  # LA CTF: don't *actually* allow writing
  chmod -R ug-w .
  find . -type d -exec chmod g+s '{}' +
fi

echo "running git server..."
git daemon --reuseaddr --base-path=/git-server/repos --export-all --enable=receive-pack /git-server/repos
