#!/bin/bash

#============================================================
#
# FILE: findbig.sh
#
# USAGE: ./findbig.sh path size
#
# DESCRIPTION: Zoeken naar grote bestanden
#
# OPTIONS:
# REQUIREMENTS: path, size
# BUGS: ---
# NOTES: ---
# AUTHOR: Jonas Van der Reysen (jonas.vanderreysen@student.kdg.be)
# COMPANY: KdG
# VERSION: 1.0
# CREATED: 04/11/22 22:18 CET
# REVISION: ---
#============================================================

# If $1 is --help, show help
if [ "$1" = "--help" ]; then
    echo "Dit commando zoekt naar grote bestanden van een door jou opgegeven grootte of groter"
    echo "Usage: ./findbig.sh path size"
    exit 0
fi

# If $1 is --version
if [ "$1" = "--version" ]; then
    echo "findbig.sh version 0.1"
    exit 0
fi

# Collect path or / as default
path=${1:-"/"}

# Collect size or 10MB as default
size=${2:-"10"}

# Execute the find command
find $path -type f -size "+${size}M" -exec stat -c '%s %n' {} \;


 