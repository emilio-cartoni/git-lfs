#!/bin/bash
filename=$(cat /dev/urandom | tr -cd '0-9' | head -c 10).dat
dd if=/dev/zero of=$filename  bs=200M  count=1
git add $filename
GIT_TRACE=1 GIT_CURL_VERBOSE=1 git commit -m 'adding random 200m file'
