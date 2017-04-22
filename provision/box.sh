#!/bin/sh

################################################################################################

sudo ansible-galaxy install -f -r /vagrant/ansible/.box-roles.yml
sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/.box.yml $@

################################################################################################