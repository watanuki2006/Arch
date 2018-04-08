#!/bin/bash

source ./lib/libfuncs.sh

install_package ruby

install_package rubygems

install_package ruby-rdoc

gem update

gem install jekyll > temp 2>&1

path_of_jekyll=`cat temp | grep "WARNING" | awk '{print $5}'`

rm temp

cat ~/.bash_profile | grep "ruby" > /dev/null
if [ $? == 1 ]
then
    echo "Update PATH..."
    echo "export PATH=$PATH:$path_of_jekyll" >> ~/.bash_profile
fi
