#!/bin/bash
#============================================================
#
# FILE: bestaat.sh
#
# USAGE: ./bestaat.sh 
#
# DESCRIPTION: Bekijken of een bestand bestaat alvorens het uit te voeren
#
# OPTIONS: 
# REQUIREMENTS: 
# BUGS: ---
# NOTES: ---
# AUTHOR: Jonas Van der Reysen (jonas.vanderreysen@student.kdg.be)
# COMPANY: KdG
# VERSION: 1.0
# CREATED: 02/11/22 23:25 CET
# REVISION: ---
#============================================================

filename="/bin/df"


if [ -x $filename ]; then
    # Execute the file with option -h
    $filename -h
else
   echo "Fout in `basename $0` $FUNCNAME: Het bestand $filename is niet uitvoerbaar" >&2
fi