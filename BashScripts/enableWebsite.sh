#!/usr/bin/expect

#Change variables as needed
set hostIP 192.168.1.206
set password "12345678"
set serviceDirectory "/home/cpre230/cpre230project/"
set runService "python manage.py runserver www2.student223.230.com:8000 &"

#Any process spawned while ssh'd will not be killed after the ssh session exits
spawn -ignore HUP ssh root@$hostIP
#Automatically supply the password to ssh when prompted
expect "password: " {send "$password\r"}
#Change into the service directory and start the service
expect "# " {send "cd $serviceDirectory && $runService\r"}
#End the ssh connection
expect eof
