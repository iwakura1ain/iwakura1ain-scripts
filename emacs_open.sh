#!/bin/bash
if [[ $1 != 0 ]]
then
    emacsclient -n $1
else
    echo "No file selected"
fi
