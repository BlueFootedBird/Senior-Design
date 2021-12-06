#!/bin/expect -f

#keep track of failed vulnerabilities
#increment on successful exploitation
score = 0

#install nmap
#yum install nmap
apt-get install nmap

#install Expect to automate SSH script
apt-get install expect
#yum install expect-devel

#telnet in and use echo to type commands using telnet
telnet <IoTIP>

#try logging in to default account with default password
echo "su sdmay14"
echo "password"

#ssh in
spawn ssh sdmay14@<IoTIP>

#antipate password prompt
expect "password: "

#send default password
send "password\r"

#if successful, expect user prompt
expect "$ "

#exit ssh session
send "exit\r"

