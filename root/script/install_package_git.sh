#!/bin/bash

source ./lib/libfuncs.sh

install_package git

if [ -d ~/GitHub ]
then
    mkdir GitHub
fi

if [ -f git.account ]
then
    name=`sed -n '1p' git.account`
    if [ $name == "user.name" ]
    then
	echo "Please update git.account..."
	exit -1
    fi
    git config --global user.name "$name"

    email=`sed -n '2p' git.account`
    if [ $email == "user.email" ]
    then
	echo "Please update git.account..."
	exit -1
    fi
    git config --global user.email "$email"

    git config --global core.editor emacs

    git config --list
fi
