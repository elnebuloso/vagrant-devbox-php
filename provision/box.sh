#!/bin/sh

################################################################################################

sudo ansible-galaxy install -r /vagrant/ansible/roles/requirements.yml
sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/provision.yml

################################################################################################