#!/bin/bash

source ./lib/libfuncs.sh

install_package git

if [ -f git.account ]
then
    name=`sed -n '1p' git.account`
    git config --global user.name "$name"

    email=`sed -n '2p' git.account`
    git config --global user.email "$email"

    git config --global core.editor emacs

    git config --list
fi
