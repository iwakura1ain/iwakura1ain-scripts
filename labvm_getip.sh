#!/bin/bash


for i in $(seq 1 $1)
do
    echo "Lab$1-Lubuntu: "
    vboxmanage guestproperty get "Lab$i-Lubuntu" "/VirtualBox/GuestInfo/Net/0/V4/IP"
    vboxmanage guestproperty get "Lab$i-Lubuntu" "/VirtualBox/GuestInfo/Net/1/V4/IP"
done

