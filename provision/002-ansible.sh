#!/usr/bin/env bash

################################################################################################

if [ ! -f "$(which ansible)" ]; then
    # installing over pip
    # apt-get -y install software-properties-common python python-pip build-essential libssl-dev libffi-dev python-dev
    # pip install --upgrade pip
    # pip install ansible

    # installing over ppa
    apt-add-repository -y ppa:ansible/ansible
    apt-get update
    apt-get -y install ansible
fi;

################################################################################################