#/bin/bash

mkdir /tmp/new-challenge-solution
cd /tmp/new-challenge-solution
git clone "${1:-"git://lac.tf:31152/new-challenge.git"}" -q
cd new-challenge

git -c user.name="Benson Liu" -c user.email="bensonhliu@lac.tf" -c commit.gpgsign=false commit -m "gimme flag" --allow-empty -q
git push --progress 2>&1 | sed "/^remote: lactf{/!d;s/^remote: //"

rm -r --interactive=never /tmp/new-challenge-solution
