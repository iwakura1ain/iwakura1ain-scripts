#!/bin/bash

if [ "$1" == "-h" ]; then
    echo "Usage: hostonly_vbox [VM-NAME]"
    exit 1
fi 

if vboxmanage list vms | fgrep -qw "$1" ; then

    if vboxmanage list runningvms | fgrep -qw "$1" ; then
        echo "Powering off $1..."
        vboxmanage controlvm "$1" poweroff
    fi 
    
    echo "Setting $1 to hostonly usng vboxnet0."
    vboxmanage modifyvm "$1" --nic1 hostonly --hostonlyadapter1 vboxnet0
    vboxmanage guestproperty get "$1" "/VirtualBox/GuestInfo/Net/0/V4/IP"
    
else   
    echo "VM $1 does not exist... quitting"
    exit 1
fi



