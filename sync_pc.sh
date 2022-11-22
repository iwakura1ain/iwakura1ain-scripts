#!/usr/bin/bash

rsync -avz -e 'ssh -p 7778' --progress /tmp/testlap dks@192.168.213.105:/tmp


