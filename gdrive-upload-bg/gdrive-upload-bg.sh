#!/bin/bash

# input parameter : upload directory token, upload filename

/root/gdrive upload --parent $1 $2 &

rm -f ./$2 & # remove original file