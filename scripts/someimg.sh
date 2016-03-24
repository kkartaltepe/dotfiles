#!/bin/bash

APIKEY='F9331172DCD757EBD858C99625057384'
UPLOAD_URL='https://someimage.com/api/2/image/upload'
function upload() {
    ext=${1#*.}
    ret=`curl -s --form "apikey=$APIKEY" --form "familysafe=0" --form "file=@$1" $UPLOAD_URL`
    if (echo "$ret" | jq -e ".success == 1" &> /dev/null); then
        image_short=`echo "$ret" | jq -r ".imagelink"`
        echo "$image_short.$ext" | sed 's/someimage/i1.someimage/'
    else
        echo "$ret" | jq -r ".message"
    fi
}

upload "$1"

