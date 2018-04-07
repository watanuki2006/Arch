#!/bin/bash

function install_package () {
    pacman -Q $1
    if [ $? == 1 ]
    then
	echo "Install $1..."
	pacman -S $1
    else
	echo "Note:$1 has been installed"
    fi
}
