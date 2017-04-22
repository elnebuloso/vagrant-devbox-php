#!/bin/sh

################################################################################################

if [ "$1" = "force" ] || [ "$1" = "forced" ]; then
    sudo ansible-galaxy install -f -r /vagrant/ansible/.box-roles.yml
else
    sudo ansible-galaxy install -r /vagrant/ansible/.box-roles.yml
fi

################################################################################################