#!/bin/bash
# Doel: apache config

adir="/etc/apache2"
confs="$adir/apache2.conf $adir/ports.conf"

# Check if argument $1 is given. If not, send error and exit code 1
if [ -z "$1" ]; then
    echo "Fout in `basename $0` $FUNCNAME: Usage: ${1:}" >&2
    exit 1;
fi
