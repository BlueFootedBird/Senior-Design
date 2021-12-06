#!/usr/bin/expect

<<<<<<< HEAD
#Change variables as needed
=======
#TODO: Change variables as needed
>>>>>>> 3b3be8855ff9fc8cd70a497565391e412b341e85
set hostIP 192.168.1.205
set password "12345678"
set serviceDirectory = "/home/iot/tempscript/tempwebsite-master/"
set runService = "python3 -m flask run --host=0.0.0.0"
<<<<<<< HEAD
#Any process spawned while ssh'd will not be killed after the ssh session exits
spawn -ignore HUD ssh root@$hostIP
#Automatically supply the password to ssh when prompted
expect "password: " {send "$password\r"}
#Change into the service directory and start the service
expect "# " {send "cd $serviceDirectory && $runService/r"}
#End the ssh connection
expect eof
=======

#Any process spawned while ssh'd will not be killed after the ssh session exits
spawn -ignore HUD ssh root@$hostIP

#Automatically supply the password to ssh when prompted
expect "password: " {send "$password\r"}

#Change into the service directory and start the service
expect "# " {send "cd $serviceDirectory && $runService/r"}

#End the ssh connection
expect eof




>>>>>>> 3b3be8855ff9fc8cd70a497565391e412b341e85
