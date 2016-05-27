#!/bin/sh

################################################################################################

if [ ! -f "$(which puttygen)" ]; then
    apt-get -y install putty-tools
fi;

################################################################################################

if [ ! -f "/vagrant/dot/ssh/vagrant/id_rsa" ]; then
    mkdir -p /vagrant/dot/ssh/vagrant
    ssh-keygen -f "/vagrant/dot/ssh/vagrant/id_rsa" -P ""
    puttygen -C vagrant-devbox-php "/vagrant/dot/ssh/vagrant/id_rsa" -O private -o "/vagrant/dot/ssh/vagrant/id_rsa.ppk"
fi;

################################################################################################

rm -rf /root/.ssh
mkdir -p /root/.ssh

find /vagrant/dot/ssh/ -type f -name '*.pub' -exec cat {} \; -exec echo "" \; >> /root/.ssh/authorized_keys

chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys

cp -r /vagrant/dot/ssh/vagrant/id_rsa /root/.ssh/
cp -r /vagrant/dot/ssh/vagrant/id_rsa.pub /root/.ssh/
chmod 600 /root/.ssh/*

################################################################################################