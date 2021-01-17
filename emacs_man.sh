#!/bin/bash
if [[ $1 != 0 ]]
then
    if man "$1" > /dev/null 2>&1
    then
        emacsclient -t --eval "(progn (man \"$1\") (delete-other-windows))"
    else
        echo "Missing man page: $1" >&2
    fi
    
fi
