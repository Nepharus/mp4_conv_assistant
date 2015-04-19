#!/bin/bash

shopt -s globstar
for f in ./**/*.mkv
do avconv -i "$f" -codec copy "${f%.mkv}.mp4"
done

shopt -s globstar
for n in ./**/*.avi
do avconv -i "$n" -c:v libx264 -c:a copy "${n%.avi}.mp4"
done
