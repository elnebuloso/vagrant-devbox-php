#!/bin/sh

################################################################################################

ansible-galaxy install --force elnebuloso.server-base,1.2.0
ansible-galaxy install --force elnebuloso.php56-apache2,1.2.0
ansible-galaxy install --force elnebuloso.docker,1.2.1
ansible-galaxy install --force elnebuloso.docker-mysql,1.2.0
ansible-galaxy install --force elnebuloso.ci,1.0.0
ansible-galaxy install --force elnebuloso.ci-vcs,1.0.0
ansible-galaxy install --force elnebuloso.ci-compass,1.0.0
ansible-galaxy install --force elnebuloso.ci-jenkins,1.2.0
ansible-galaxy install --force elnebuloso.ci-phing-commons,1.0.0

# vendor roles
ansible-galaxy install --force carlosbuenosvinos.ansistrano-deploy,1.7.0
ansible-galaxy install --force carlosbuenosvinos.ansistrano-rollback,1.4.1

################################################################################################