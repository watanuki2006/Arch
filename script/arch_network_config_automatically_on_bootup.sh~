#!/bin/bash

INTERFACE=$1
NETWORK=$2
GATEWAY=$3

_TRUE=1
_FALSE=0

gw=_FALSE

ping -c 3 8.8.8.8 > /dev/null 2>&1
if [ $? != 0 ]; then
    echo "Config network..."
    ip link set $INTERFACE up
    if [ $? -ne 0 ]
    then
        exit -1
    fi
    
    echo "Config IP address..."
    for ip_addr in `seq 2 100`
    do
        ping -c 3 192.168.$NETWORK.$ip_addr > /dev/null 2>&1
        if test $? -ne 0; then
            echo "Local IP is 192.168.$NETWORK.$ip_addr" 
            ip addr add 192.168.$NETWORK.$ip_addr/24 broadcast 192.168.$NETWORK.255 dev $INTERFACE
            if [ $? -ne 0 ]
            then
                exit -1
            fi
            gw=$_TRUE
            break
        else
            echo "IP 192.168.$NETWORK.$ip_addr is busy"
        fi
    done
    
    if [ $gw -eq $_TRUE ]
    then
        echo "Config gateway..."
        ip route add default via 192.168.$NETWORK.$GATEWAY
        if [ $? -ne 0 ]
        then
            exit -1
        fi
    fi
else
    echo "Network is connected"
fi
