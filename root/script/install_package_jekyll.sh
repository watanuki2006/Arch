#!/bin/bash

source ./lib/libfuncs.sh

install_package ruby

install_package rubygems

install_package ruby-rdoc

gem update

gem install jekyll > temp 2>&1

gem install bundler > /dev/null 2>&1

gem install minima > /dev/null 2>&1

##################################################################
# Example [of temp]
##################################################################
# WARNING:  You don't have /root/.gem/ruby/2.5.0/bin in your PATH,
#           gem executables will not run.
# Successfully installed jekyll-3.7.3
# Parsing documentation for jekyll-3.7.3
# Done installing documentation for jekyll after 0 seconds
# 1 gem installed
##################################################################

for path_of_jekyll in `cat temp | grep "WARNING" | awk '{print $5}'`
do
    break
done

rm temp

cat ~/.bash_profile | grep "ruby" > /dev/null
if [ $? == 1 ]
then
    echo "Update PATH..."
    cat ~/.bash_profil | grep "xorg-xinit" > /dev/null
    if [ $? == 1 ]
    then	
	echo "$path_with_jekyll_enable" >> ~/.bash_profile
    else
	sed -i "/xorg-xinit/ i $path_with_jekyll_enable\n" ~/.bash_profile
    fi
fi
