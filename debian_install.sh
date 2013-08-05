#!/bin/bash

apt-get install autossh
mkdir -p /etc/ssh_forward
cp ./ssh_forward.conf /etc/ssh_forward/ssh_forward.conf
cp ./ssh_forward.init /etc/init.d/ssh_forward
chmod 755 /etc/init.d/ssh_forward
update-rc.d ssh_forward defaults
update-rc.d ssh_forward enable

/etc/init.d/ssh_forward start
