#!/bin/bash
#This file should be executed in repository root (GitHub/Arch/)

rm ~/.*~
rm ~/script/*~

rm ~/GitHub/Arch/root/.bash_profile
rm -r ~/GitHub/Arch/root/script/

cp ~/.bash_profile ~/GitHub/Arch/root/
cp -r ~/script/ ~/GitHub/Arch/root/

git add *
git add .bash_profile

git status

echo "Press any key to continue..."
read

git commit

echo "Waitting for connecting GitHub..."

git push
