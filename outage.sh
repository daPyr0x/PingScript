#!/bin/bash

FILENAME="outages.log"
echo "--OUTAGE DETECTED--" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME

./pingscript.sh google.ca &
./pingscript.sh 99.250.34.15 &
./tracescript.sh google.ca &
./tracescript.sh 99.250.34.15 &
wait

echo "SCRIPT ENDED" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME
