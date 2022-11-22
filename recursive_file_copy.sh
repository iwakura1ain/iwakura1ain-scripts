#!/bin/bash

if [ "$1" == "-h" ]; then
    echo "recursively find file and copy"
    echo "cmd [dir] [pattern] [dest-dir]"
    exit 1
fi

cd $1

TARGET=$(ls . ; ls ./*/* ; ls ./*/*/* ;)
for file in ${TARGET// / }
do
    if [ ! -d  $file ]
    then
	cp $(echo $(echo $file | grep $2)) $3
    fi
       
done


    

