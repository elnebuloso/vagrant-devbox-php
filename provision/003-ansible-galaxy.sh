#!/bin/sh

################################################################################################

rm -rf /etc/ansible/roles/elnebuloso.*

ansible-galaxy install elnebuloso.server-base,1.1.0
ansible-galaxy install elnebuloso.apache2,1.1.0
ansible-galaxy install elnebuloso.php56,1.1.0
ansible-galaxy install elnebuloso.php56-apache2,1.1.2
ansible-galaxy install elnebuloso.docker,1.2.0
ansible-galaxy install elnebuloso.docker-mysql,1.0.0
ansible-galaxy install elnebuloso.ci-jenkins,1.0.0

################################################################################################