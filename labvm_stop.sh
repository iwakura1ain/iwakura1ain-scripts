#!/bin/bash

for i in $(seq 1 $1)
do
    vboxmanage controlvm "Lab$i-Lubuntu" poweroff
done

