#!/bin/bash

if [ "$1" == "-h" ]; then
    echo "Usage: vbox_getIP.sh [VM-NAME]"
    exit 1
fi 

if vboxmanage list vms | fgrep -qw "$1" ; then
    vboxmanage guestproperty get "$1" "/VirtualBox/GuestInfo/Net/0/V4/IP"
    
else   
    echo "VM $1 does not exist... quitting"
    exit 1
fi



