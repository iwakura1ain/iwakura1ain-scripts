#!/bin/bash


for i in $(seq 1 $1)
do
    vboxmanage startvm "Lab$i-Lubuntu" --type headless
done


