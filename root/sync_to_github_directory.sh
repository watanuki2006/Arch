#!/bin/bash
#Source:     /root/script
#Desination: /root/github/Arch/root/script
#This file should be executed in destination

rm ~/script *~

cp ~/.bash_profile ~/github/Arch/root/
cp -r ~/srcipt/ ~/github/Arch/root/

git add *
git add .bash_profile

git status

echo "Press any key to continue..."
read

git commit

echo "Press any key to continue..."
read

git push
