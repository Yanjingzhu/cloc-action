#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
num=$( echo ${line} | awk -F" " '{ print $5}')
echo "::set-output name=lines::$line"
