#!/bin/bash

shopt -s globstar

if [ "$#" -ne "2" ];
then
    echo "usage: $0 old_name new_name"
    exit 1
fi

#echo "Replace $1 with $2?"
#read
grep -rl "$1" text/**/*.{c,h} assets/**/*.c enhancements/**/*.{c,h,s} lib/**/*.{c,h,s} asm/**/*.s bin/**/*.c data/*.c levels/**/*.c actors/**/*.c src/**/*.{c,h} include/**/*.{h,in} undefined_syms.txt | xargs sed -i "s/\b$1\b/$2/g"
