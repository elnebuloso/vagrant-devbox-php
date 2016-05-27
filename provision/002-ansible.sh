#!/bin/sh

################################################################################################

if [ ! -f "$(which ansible)" ]; then
    apt-get -y install software-properties-common

    apt-add-repository -y ppa:ansible/ansible

    apt-get update
    apt-get -y install ansible
fi;

################################################################################################

ansible-galaxy install elnebuloso.server-base,1.0.2
ansible-galaxy install elnebuloso.apache2,1.0.0
ansible-galaxy install elnebuloso.php56,1.0.0
ansible-galaxy install elnebuloso.php56-apache2
ansible-galaxy install elnebuloso.docker,1.0.0

################################################################################################