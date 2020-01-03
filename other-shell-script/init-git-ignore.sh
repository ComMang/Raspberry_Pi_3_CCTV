#!/bin/bash

# Parameter : target file or directory path

git rm -r --cached $1

git add .

git commit -m "Fixed untracked files"

git push master origin