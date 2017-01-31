#!/usr/bin/env bash

################################################################################################

if [ ! -f "$(which ansible)" ]; then
    apt-get -y install software-properties-common build-essential libssl-dev libffi-dev python python-pip python-dev
    pip install --upgrade pip
    pip install 'ansible'
    pip install 'docker-py'
    pip install 'docker-compose>=1.9.0,<1.10.0'

    # apt-add-repository -y ppa:ansible/ansible
    # apt-get update
    # apt-get -y install ansible
fi;

################################################################################################