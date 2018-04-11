#!/bin/bash

source ./lib/libfuncs.sh

install_package ruby

install_package rubygems

install_package ruby-rdoc

gem update

gem install jekyll > temp 2>&1

gem install bundler > /dev/null 2>&1

gem install minima > /dev/null 2>&1

for path_of_jekyll in `cat temp | grep "WARNING" | awk '{print $5}'`
do
    break
done

rm temp

cat ~/.bash_profile | grep "ruby" > /dev/null
if [ $? == 1 ]
then
    echo "Update PATH..."
    path_with_jekyll_enable="export PATH=$PATH:$path_of_jekyll"
    sed -i "/xorg-xinit/ i $path_with_jekyll_enable\n" ~/.bash_profile
fi
