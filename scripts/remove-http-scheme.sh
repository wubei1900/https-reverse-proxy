#!/bin/bash

if [ -n "$1" ]; then
    socat -v tcp-l:$1,fork exec:"$0"
else
    socat - tcp:ip:80 | sed --unbuffered 's/http://g'
fi
