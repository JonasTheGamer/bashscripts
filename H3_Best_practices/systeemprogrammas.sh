#!/bin/bash

# Doel: checken welke systeemprogramma's er zijn die vanuit sbin zijn opgestart

for file in $(ls /proc/*/cmdline); do
    echo "===$file"

    # Check if file is not empty
    if [ -s $file ]; then
        echo $file

        # Check if file still exists
        if [ -e $file ]; then
            $(grep sbin $file)
        fi
    else
        echo "empty: "
    fi
done
