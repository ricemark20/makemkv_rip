#!/bin/bash

# Convert mkv files in bulk with all available subtitles using Handbrake.

mkdir encoded

for i in *.mkv
do
  HandBrakeCLI --native-language eng --subtitle scan,1,2,3,4,5,6,7,8,9,10 --subtitle-default=1 --subtitle-forced=1 --audio-lang-list eng -i $1 -o "encoded"/"`basename -s .mkv $1`.mkv"
done
