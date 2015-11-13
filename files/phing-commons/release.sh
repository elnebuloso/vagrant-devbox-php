#!/bin/sh

################################################################################################

rm -rf /opt/vagrant/phing-commons
mkdir -p /opt/vagrant/phing-commons
composer create-project elnebuloso/phing-commons /opt/vagrant/phing-commons

################################################################################################

PHING_COMMONS_VERSION=`cat /opt/vagrant/phing-commons/VERSION`
PHING_COMMONS_VERSION_FILENAME=phing-commons-$PHING_COMMONS_VERSION.tar.gz

################################################################################################

tar cfzv /vagrant/files/phing-commons/releases/$PHING_COMMONS_VERSION_FILENAME -C /opt/vagrant/phing-commons .

################################################################################################

rm -rf /opt/vagrant/phing-commons
mkdir -p /opt/vagrant/phing-commons
tar xfzv /vagrant/files/phing-commons/releases/$PHING_COMMONS_VERSION_FILENAME -C /opt/vagrant/phing-commons

################################################################################################