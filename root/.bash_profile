#!/bin/bash

~/script/arch_network_config_automatically_on_bootup.sh enp0s3 1 253

umount -R /mnt
mount -t vboxsf Share /mnt

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/root/.gem/ruby/2.5.0/bin

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
