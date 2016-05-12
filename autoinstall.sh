#!/bin/sh
if [ ! $# == 1 ]; then
	echo "Usage: $0 username"
	exit 2
fi

HOME=`cat /etc/passwd|grep  "^$1"|awk -F: '{print $6}'`
rpms='unzip epel-release wget tmux zsh openssh-server git'
for r in $rpms
do
    if test -z `rpm -qa $r` 
    then
        yum -y install $r
    else
        echo "$r was installed"
    fi
done
echo "Start download zip file"
wget https://github.com/tudouya/tool-config/archive/master.zip -O /tmp/master.zip
echo "Download zip file Ok"
echo "Start unzip file"
cd /tmp
unzip  /tmp/master.zip
echo "Start copy file to target user home"
cp -rf /tmp/tool-config-master/. $HOME 
chown -R $1:$1 $HOME
cd ~
echo "clean file..."
if [ -e /tmp/tool-config-master ]; then
    rm -rf /tmp/tool-config-master
fi

if [ -e /tmp/master.zip ]; then
    rm -rf /tmp/master.zip
fi

