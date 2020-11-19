#!/bin/bash
now="Update log for $(date) \n"

echo $now > /tmp/apt.log

apt-get update -qq -y --force-yes &> /tmp/apt.log 
apt-get upgrade -qq -y --force-yes &> /tmp/apt.log 
apt autoclean -qq -y --force-yes &> /tmp/apt.log 
