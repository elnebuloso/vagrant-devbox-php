#!/bin/sh

################################################################################################

ansible-galaxy install --force elnebuloso.server-base,1.1.0
ansible-galaxy install --force elnebuloso.apache2,1.1.0
ansible-galaxy install --force elnebuloso.php56,1.1.0
ansible-galaxy install --force elnebuloso.php56-apache2,1.1.2
ansible-galaxy install --force elnebuloso.docker,1.1.0

################################################################################################