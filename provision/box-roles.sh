#!/bin/sh

################################################################################################

if [ "$1" = "force" ] || [ "$1" = "forced" ]; then
    ansible-galaxy install -f -r /vagrant/ansible/.box-roles.yml
else
    ansible-galaxy install -r /vagrant/ansible/.box-roles.yml
fi

################################################################################################