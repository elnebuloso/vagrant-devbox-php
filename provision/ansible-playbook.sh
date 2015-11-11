#!/bin/sh

################################################################################################

# https://groups.google.com/forum/#!topic/ansible-project/aXutTmXAbR0
sudo PYTHONUNBUFFERED=1 ansible-playbook -i "localhost," -c local /vagrant/ansible/playbook.yml

################################################################################################