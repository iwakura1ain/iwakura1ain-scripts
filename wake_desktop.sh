#!/bin/bash
#auto wake desktop from raspberry

for i in 1 2 3
do
    wake
done

sleep 3

while true; do
    RESULT=$(ping desktop -c 1 -W 1)
    if [[ $RESULT == *"1 received"* ]]; then
        echo "Desktop awake!"
        break
    fi
    echo -n "."
done

