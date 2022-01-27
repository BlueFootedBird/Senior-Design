#!/usr/bin/expect

#TODO: Change variables as needed
set hostIP 192.168.1.206
set password "12345678"
set servicePort "8000"

#SSH into target machine with desired service
spawn ssh root@$hostIP

#Automatically supply the password to ssh when prompted
expect "password: " {send "$password\r"}

#Find the process running on the servicePort and kill it
expect "# " {send "kill -9 \$(lsof -i:$servicePort -t)\r"}

#Exit the ssh connection
expect "# " {send "exit\r"}
expect eof
