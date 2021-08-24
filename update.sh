#!/bin/bash
now="Update log for $(date) \n"

/bin/echo $now > /home/dks/Temp/auto_update.log
yay -Syyu --noconfirm >> /home/dks/Temp/auto_update.log


#/usr/bin/apt-get update -q -y --force-yes &>> /var/log/auto_update.log
#/usr/bin/apt-get upgrade -q -y --force-yes &>> /var/log/auto_update.log
#/usr/bin/apt autoclean -q -y --force-yes &>> /var/log/auto_update.log
