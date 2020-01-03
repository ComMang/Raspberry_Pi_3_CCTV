#!/bin/bash

echo "<Python> pytest"

python3 -m pytest --cov=.# python test code (require pytest / sudo pip install pytest)

if [ "$?" =  "0" ]; then # $? : Status of Nearist Command / if test is passed, return 0

    echo "<Python> pytest pass"

    now = `date '+%m/%d %H:%M:%S'`; # show date

    message = "$1" # $1 : First Arugment
    if [ $1 = '' ]; then # if commit comment is empty
        message = "auto commit and push" # change comment to this
    fi 

    echo "<Git> commit and push"

    git add . 
    git commit -m "${now} / ${message}" # Parameter Expansion : ${string} 
    git push 
else
    echo "<Python> pytest fail"
    exit 1 
fi

echo "<Shell Script> mointor repo"

./auto-repo-change-check.sh # excute check repo-change