#!/bin/bash

source ./lib/libfuncs.sh

umount -R /mnt

mount /dev/cdrom /mnt
if [ $? == 32 ]
then
    echo "Please inisert VirtualBox Tools CD"
    exit -1
fi

pacman -Syu

install_package gcc

install_package make

install_package perl

install_package linux-headers

echo "Install VirtualBox Tools..."
/mnt/VBoxLinuxAdditions.run

umount /mnt
