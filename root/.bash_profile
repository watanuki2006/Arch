#!/bin/bash

~/script/arch_network_config_automatically_on_bootup.sh enp0s3 1 253

pacman -Q xorg-xinit > /dev/null
if [ $? == 0 ]
then
    echo "Start LXDE? [Y/N]"
    until [ 0 == 1 ]
    do
	if [ "$ch" == "Y" ] || [ "$ch" == "y" ]
	then
	    startx
	    break
	elif [ "$ch" == "N" ] || [ "$ch" == "n" ]
	then
	    break
	else
	    read ch
	fi
    done
fi
