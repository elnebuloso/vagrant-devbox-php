#!/bin/sh

################################################################################################

ansible-galaxy install -f -r /vagrant/ansible/.box-roles.yml
ansible-playbook -i 'localhost,' -c local /vagrant/ansible/.box.yml

################################################################################################