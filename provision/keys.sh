#!/bin/sh

################################################################################################

if [ ! -f "$(which puttygen)" ]; then
    apt-get -y install putty-tools
fi;

################################################################################################

if [ ! -f "/vagrant/dot/ssh/vagrant/id_rsa" ]; then
    mkdir -p /vagrant/dot/ssh/vagrant
    ssh-keygen -f "/vagrant/dot/ssh/vagrant/id_rsa" -P ""
    puttygen "/vagrant/dot/ssh/vagrant/id_rsa" -O private -o "/vagrant/dot/ssh/vagrant/id_rsa.ppk"
fi;

################################################################################################