#!/bin/bash

FILENAME="outages.log"
echo "--OUTAGE DETECTED--" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME

./pingscript.sh google.ca &
./pingscript.sh ip.address &
./tracescript.sh google.ca &
./tracescript.sh ip.address &
wait

echo "SCRIPT ENDED" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME
