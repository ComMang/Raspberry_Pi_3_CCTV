#!/bin/bash

watch -n 10 -g -d 'git status' & # in 10s interval(-n 10), excute specific cmd(git status) and check difference(-d)

m="$(git status --short)" # print repo difference

./auto-test-push.sh $m & # if repo changed, watch stop and excute auto-test-push.sh