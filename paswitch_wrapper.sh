#!/bin/bash

input="$1"
if [ -z "$input" ]; then
    echo "Please provide a partial name of the audio device to switch to."
    exit 1
fi

sinks=`pactl list sinks | grep Name:`
if [ -z "$sinks" ]; then
    echo "No audio devices found."
    exit 1
fi

selected=`echo "$sinks" | grep -i "$input"`
selected=${selected#*Name: }
echo "$selected"
if [ -z "$selected" ]; then
    echo "$input not found. Try one of these devices."
    echo "$selected"
    exit 1
fi

paswitcher "$selected"
