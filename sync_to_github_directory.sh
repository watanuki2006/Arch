#!/bin/bash
#This file should be executed in repository root

rm ~/*~
rm ~/script/*~

cp ~/.bash_profile ~/github/Arch/root/
cp -r ~/srcipt/ ~/github/Arch/root/

git add *
git add .bash_profile

git status

echo "Press any key to continue..."
read

git commit

echo "Waitting for connecting GitHub..."

git push