#!/usr/bin/env bash

################################################################################################

if [ ! -f "$(which ansible)" ]; then
    apt-add-repository -y ppa:ansible/ansible
    apt-get update
    apt-get -y install ansible
fi;

################################################################################################