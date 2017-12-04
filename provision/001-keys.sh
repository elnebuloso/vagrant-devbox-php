#!/usr/bin/env bash

################################################################################################

if [ ! -f "$(which puttygen)" ]; then
    apt-get -y install putty-tools
fi;

################################################################################################

# create ssh keys for root user

if [ ! -f "/vagrant/.ssh/root/id_rsa" ]; then
    mkdir -p /vagrant/.ssh/root
    ssh-keygen -f "/vagrant/.ssh/root/id_rsa" -P ""
    puttygen "/vagrant/.ssh/root/id_rsa" -O private -o "/vagrant/.ssh/root/id_rsa.ppk"
fi;

rm -rf /root/.ssh
mkdir -p /root/.ssh
cp -r /vagrant/.ssh/root/* /root/.ssh

find /vagrant/.ssh/authorized_keys/ -type f -name '*.pub' -exec cat {} \; -exec echo "" \; > /root/.ssh/authorized_keys

chmod 700 /root/.ssh
chmod 600 /root/.ssh/*
chown -R root:root /root/.ssh

################################################################################################