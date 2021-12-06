#!/bin/bash

#allow password based login for ssh
sed '/PermitRootLogin/d' /etc/ssh/sshd_config #delete line containing this pattern
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config #add this line to end of file

#create a user
echo "create user"
useradd sdmay14

#pipe password into passwd command
echo -e "password\npassword" | passwd sdmay14

#give initial user sudo privileges
#possibly wheel instead of sudo
usermod -aG sudo sdmay14

echo "install updates"
#yum update
apt-get update

echo "install ssh"
#yum -y install openssh-server
apt install openssh-server

echo "enable ssh"
systemctl enable ssh
systemctl start ssh

echo "install telnet"
#yum install telnet-server telnet
apt-get install telnetd

echo "enable telnet"
systemctl enable telnet.socket
systemctl start telnet.socket

#install website dependencies and start website service

#install wget
apt-get install wget

#get tarball from gitrepo
wget https://gitlab.com/foster.jacobdean/tempwebsite/-/archive/master/tempwebsite-master.tar

#unpack tarball
tar xvf tempwebsite-master.tar

#install python3, pip, and flask
apt-get install python3

apt-get install python3-pip

python3 -m pip install --upgrade pip

python3 -m pip install flask

#cd into unpacked tarball dir
cd tempwebsite-master/

#start website service
python3 -m flask run --host=0.0.0.0

#set up ftp?

