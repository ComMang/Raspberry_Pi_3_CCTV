#!/bin/bash

# if cmd excute, excute auto-test-push.sh 
git config --global alias.auto-test-push '!auto-test-push.sh' # using git alias, shorten command

chmod 744 auto-test-push.sh # change file authority

brew install watch # install monitor tool

# sudo apt-get install expect # install expect cmd


