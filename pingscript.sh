#!/bin/bash

FILENAME="logs/${1}-ping.log"
echo "SCRIPT STARTED ${1}" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME

ping -c 50 ${1} -4 >> $FILENAME

echo "SCRIPT ENDED" >> $FILENAME
date +%d.%m.%y' '%R:%S >> $FILENAME
