#!/bin/sh

################################################################################################

FORCE="no"
ROLES="no"

################################################################################################

for i in "$@"
do
case $i in
    --force)
        FORCE="yes"
    ;;
    --roles)
        ROLES="yes"
    ;;
    *)
        # unknown option
    ;;
esac
done

################################################################################################

clear

if [ "$FORCE" = "yes" ]
then
    sudo rm -rf /etc/ansible/roles/*
    sudo rm -rf /root/.ansible/roles/*
    sudo rm -rf /home/vagrant/.ansible/roles/*
    sudo rm -rf ~/.ansible/roles/*
fi

if [ "$ROLES" = "yes" ]
then
    if [ "$FORCE" = "yes" ]
    then
        sudo ansible-galaxy install -r /vagrant/ansible/roles/requirements.yml -p /etc/ansible/roles --force
    else
        sudo ansible-galaxy install -r /vagrant/ansible/roles/requirements.yml -p /etc/ansible/roles
    fi
fi

sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/box.yml

################################################################################################