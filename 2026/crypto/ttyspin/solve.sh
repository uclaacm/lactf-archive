#!/bin/sh
tmux new-session -s ttyspin_solve -d bash
sleep 1
tmux send-keys -t ttyspin_solve 'ssh -p 32123 ttyspin@chall.lac.tf && echo' Enter
sleep 1
tmux send-keys -t ttyspin_solve ttyspin Enter
tmux send-keys -t ttyspin_solve -H 4a 7c 53 7c 4f 5a 54 53 7c 49 4c 4f 5a 4a 7c 80 00 00 00 00 00 00 01 b8 0a
tmux send-keys -t ttyspin_solve 'VHxUfFRUVFR8VHwgICAgICAgICAgSSAgICAgICAgICBTICAgICAgICAgIE8gICAgICAgICAgTCAgICAgICAgICBaICAgICAgICAgIFQgICAgICAgICAgSiAgICAgICAgICBJICAgICAgICAgIFMgICAgICAgICAgTyAgICAgICAgTCAgICAgICAgWiAgICAgICAgVCAgICAgICAgSiAgICAgICAgSSAgICAgICAgUyAgICAgICAgTyAgICAgICAgTCAgICAgICAgWiAgICAgICAgIA==' Enter
tmux send-keys -t ttyspin_solve '9fdaa5cbfe4499ad818225aabb8b74de3570cf01e5084abf55732f4990920fce' Enter
tmux a -t ttyspin_solve
