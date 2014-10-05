#!/bin/bash
sudo mkdir ~/.aptproxyget
sudo cp 01proxy.aptproxyget.data  ~/.aptproxyget/01proxy.aptproxyget.data
sudo cp apt-proxy-get.sh ~/.aptproxyget/apt-proxy-get.sh
if [ -e "~/.bash_aliases" ]; then
  sudo cp ~/.bashaliases alias_data
  sudo echo "alias aptproxyget='sh ~/.aptproxyget/apt-proxy-get.sh'" >> alias_data
  sudo mv alias_data ~/.bash_aliases
else
  touch alias_data
  echo "alias aptproxyget='sh ~/.aptproxyget/apt-proxy-get.sh'" >> alias_data
  sudo mv alias_data ~/.bash_aliases
fi
source ~/.bashrc
clear
echo aptproxyget has been successfully installed.
echo "Commands:"
echo "		-c		Checks /etc/apt/apt.conf.d/01proxy existence and outputs the contents of the file"
echo "		-a		Adds /etc/apt/apt.conf.d/01proxy and the rules for the NYCBOE proxy"
echo "		-r		Removed /etc/apt/apt.conf.d/01proxy if it exists"
echo "		-h		Displays this message"
