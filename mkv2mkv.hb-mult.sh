# Bash file to bulk convert mkv files using Handbrake

#!/bin/bash
mkdir encoded

for i in *.mkv
do
HandBrakeCLI --first-subtitle --subtitle-default=none -i $i -o "encoded"/"`basename -s .mkv $i`.mkv"
done
