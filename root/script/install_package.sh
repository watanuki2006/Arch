#!/bin/bash

source ./lib/libfuncs.sh

_TRUE=1
_FALSE=0

falg=$_FALSE

while getopts virtualbox opt
do
    case $opt in
        v)
            ;&
        i)
            ;&
        r)
            ;&
        t)
            ;&
        u)
            ;&
        a)
            ;&
        l)
            ;&
        b)
            ;&
        o)
            ;&
        x)
            echo 'Install VirtualBox Tools...'
            ~/script/install_package_virtualbox_tools.sh
            flag=$_TRUE
            break
            ;;
        *)
            echo "Unknow option $opt"
            ;;
    esac
    if [ $flag == $_FALSE ]
    then
        pacman -Syu

        install_package gcc

        install_package make
    fi
done 

install_package emacs

./install_package_git.sh
