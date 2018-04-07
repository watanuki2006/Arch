#!/bin/bash
#Source:     /root/script
#Desination: /root/github/Arch/root/script
#This file should be executed in destination

rm ~/script *~

cp -r ~/srcipt/ ~/github/Arch/root/

git add *

git status

echo "Press any key to continue..."
read

git commit

git push
