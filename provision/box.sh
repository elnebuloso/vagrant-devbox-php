#!/bin/sh

################################################################################################

sudo rm -rf /etc/ansible/roles/*
sudo ansible-galaxy install -r /vagrant/ansible/.box-roles.yml
sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/.box.yml $@

################################################################################################