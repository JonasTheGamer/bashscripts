#!/bin/bash
#============================================================
#
# FILE: apachetest.sh
#
# USAGE: ./apachetest.sh
#
# DESCRIPTION: Benchmark apache test
#
# OPTIONS:
# REQUIREMENTS:
# BUGS: ---
# NOTES: ---
# AUTHOR: Jonas Van der Reysen (jonas.vanderreysen@student.kdg.be)
# COMPANY: KdG
# VERSION: 1.0
# CREATED: 04/11/22 21:49 CET
# REVISION: ---
#============================================================
# sudo apt-get install apache2 apache2-utils curl

# Check for ab
error_geen_ab="Fout in $(basename $0) $FUNCNAME: Het programma ab is nodig. Installeren kan met sudo apt-get install apache2-utils"
command -v ab >/dev/null 2>&1 || {
    echo >&2 error_geen_ab
    exit 1
}

# Get url or default value
url=${1:-"127.0.0.1/"}

# Check whether or not the url exist
curl $url &>/dev/null
curl_status=$?

if [ $curl_status -eq 0 ]; then
    ab -n 100 -kc 10 ${url}
else
    echo "Fout in $(basename $0) $FUNCNAME: De url is niet bereikbaar" >&2
    exit 2
fi
