#!/bin/bash
#serve simple file with netcat 
#from https://nmap.org/ncat/guide/ncat-tricks.html

PORT=80

while getopts ":p:h" opt; do
    case "${opt}" in
        h)
            echo "Usage: ./post_file.sh [URL] [FILE]"
            exit 1
            ;;
        p)
            PORT=${OPTARG}
            ;;
        \?)
            echo "Usage: ./post_file.sh [URL] [FILE]"
            exit 1
            ;;
    esac
done
shift $((OPTIND -1))

if [ "$1" == "" ] or [ "$2" == "" ]; then
    echo "No file selected."
    exit 1
fi

curl -F media=$2 "$1"
