#!/bin/bash

FILENAME="logs/${1}-traceroute.log"
echo "SCRIPT STARTED ${1}" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME

traceroute ${1} >> $FILENAME

echo "SCRIPT ENDED" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME
