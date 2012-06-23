#!/bin/bash

apt-get install autossh
mkdir -p /etc/ssh_forward
cp ./ssh_forward.conf /etc/ssh_forward/ssh_forward.conf
cp ./ssh_forward.init /etc/init.d/ssh_forward
chmod 755 /etc/init.d/ssh_forward
for rcn in 2 3 4 5 ; do
	ln -s /etc/init.d/ssh_forward /etc/rc${rcn}.d/S99ssh_forward
done
update-rc.d ssh_forward enable


