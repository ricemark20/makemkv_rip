#!/bin/bash
echo "Series?"
read series
echo "Series: $series"
echo "What Season is this?"
read season
echo "Season: $season"
echo "Which disc # is this?"
read disknum
echo "This is disk #$disknum"
echo "Starting with which episode?"
read episode

# Limit spindle speed for DVD drive
eject -x20
# Create separate directory for each disc
mkdir ""disc."$disknum"
makemkvcon mkv --progress=-same --minlength=2100 disc:0 all ""disc."$disknum"
cd ""disc."$disknum"

episode=$episode
for track in *.mkv
do
        # Rename track from MakeMKV format to a more readable form
        mv $track $series"_S"$season"_D"$disknum"_E"$episode.mkv
        episode=$((episode+1))
done

cd ..
