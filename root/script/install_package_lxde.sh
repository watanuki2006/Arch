#!/bin/bash

source ./lib/libfuncs.sh

install_package xorg-xinit

install_package lxde-common

install_package lxsession

install_package openbox

install_package gpicview

install_package lxappearance

install_package lxappearance-obconf

install_package lxde-icon-theme

install_package lxdm

install_package lxhotkey

install_package lxinput

install_package lxlauncher

install_package lxmusic

install_package lxpanel

install_package lxrandr

install_package lxtask

install_package lxterminal

install_package pcmanfm

if [ ! -f ~/.xinitrc ]
then
    echo "Create .xinitrc..."
    touch ~/.xinitrc
    echo "exec startlxde" > ~/.xinitrc
else
    echo ".xinitrc exist"
fi

install_package chromium

install_package sakura
