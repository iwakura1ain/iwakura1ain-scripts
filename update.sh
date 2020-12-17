#!/bin/bash
now="Update log for $(date) \n"

/bin/echo $now > /tmp/apt.log

/usr/bin/apt-get update -q -y --force-yes &> /tmp/apt.log 
/usr/bin/apt-get upgrade -q -y --force-yes &> /tmp/apt.log 
/usr/bin/apt autoclean -q -y --force-yes &> /tmp/apt.log 
