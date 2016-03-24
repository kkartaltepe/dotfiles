#!/bin/bash

shopt -s nullglob
cd /mnt/big/wb/Weebpapers
feh --bg-scale "$(find ./|shuf -n1)" "$(find ./|shuf -n1)"
