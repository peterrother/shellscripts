#!/bin/bash

FILES=/User/Peter/wedding/*
HOUR=12
MINS=30

# YYYY:mm:dd HH:MM:SS

for f in $FILES
do
    TIMEEXIF=`date -j -vJunm -v8d -v2019y -v${HOUR}H -v${MINS}M -v0S '+%Y:%m:%d %H:%M:%S'`
    exiftool -alldates="$TIMEEXIF" "$f"
    echo "Processed $f - $TIMEEXIF"
    MINS=$(($MINS + 1))
    if [ $MINS -eq 60 ]
    then
        MINS=0
        HOUR=$(($HOUR + 1))
    fi
done
