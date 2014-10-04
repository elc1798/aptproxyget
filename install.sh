sudo mkdir ~/.aptproxyget
sudo cp 01proxy.aptproxyget.data  ~/.aptproxyget/01proxy.aptproxyget.data
sudo cp apt-proxy-get.sh ~/.aptproxyget/apt-proxy-get.sh
sudo echo "alias aptproxyget='sh ~/.aptproxyget/apt-proxy-get.sh'" >> ~/.bash_aliases
source ~/.bashrc
clear
echo aptproxyget has been successfully installed.
echo "Commands:"
echo "		-c		Checks /etc/apt/apt.conf.d/01proxy existence and outputs the contents of the file"
echo "		-a		Adds /etc/apt/apt.conf.d/01proxy and the rules for the NYCBOE proxy"
echo "		-r		Removed /etc/apt/apt.conf.d/01proxy if it exists"
echo "		-h		Displays this message"
