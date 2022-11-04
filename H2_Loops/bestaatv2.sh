#!/bin/bash
# Check if file exists and then do some more checks 

filename="/bin/df"

# If file does not exist, give error
if [ ! -e $filename ]; then
    echo "Fout in `basename $0` $FUNCNAME: Bestand $filename bestaat niet" >&2
    exit 1;

elif [ ! -r $filename ] || [ ! -x $filename ]; then
   echo "Fout in `basename $0` $FUNCNAME: $filename is niet uitvoerbaar" >&2
   exit 2;
fi

echo "Het bestand bestaat, is leesbaar en kan uitgevoerd worden!"