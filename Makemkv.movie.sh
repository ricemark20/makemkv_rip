#!/bin/bash
echo "Movie title?"
read title
mkdir "$title"
# Keep DVD drive from running too fast
eject -x20
# Rip any track over 40 minutes
makemkvcon mkv --progress=-same --minlength=2100 disc:0 all "$title"
# Rename first movie title from the 'read title' input
mv $title/title_t00.mkv $title/$title.mkv
