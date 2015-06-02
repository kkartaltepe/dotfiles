#!/bin/bash

input=$1
pactl list sinks | grep Name: | grep -i $input
