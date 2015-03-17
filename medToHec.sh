#!/bin/bash
# medToHec - Medium parser into jade files that I can use to automatically post in my website.
# Copyright Hector Antonio Cardenas, 2015
# MIT License

# args: -w get from website, -f get from file
OPTIND=1 # Reset is necessary if getopts was used previously in the script.  It is a good idea to make this local in a function.

# Initializing variables
website=0
urlWeb=""
urlFile=""
file=0


# Show valid parameters
show_help() {
    echo "Accepted flags:"
    echo "[-w] Website URL"
    echo "[-f] File Path"
}


#oprargs set to silent
while getopts ":w:f:h?" opt; do
    case "$opt" in
        w)
            website=1
            urlWeb=$OPTARG >&2
        ;;
        f)
            file=1
            urlFile=$OPTARG >&2
        ;;
        h|\?)
            show_help
            exit 0
            ;;
    esac
done

echo "Arg for -w $urlWeb"
echo "Arg for -f $urlFile"


