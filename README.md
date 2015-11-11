# vagrant-devbox-php

vagrant full stack php development box

## provisioning

* this box is provisioned through ansible
* all configuration settings can be changed in ansible/vars/all.yml

## software

* ubuntu 14.04 LTS
* ansible
* apache2
* mysql
* memcached
* mongo
* grafana
* graphite
* statsd

### apache2

* http://box.entwickl.de/

### grafana

* available through apache2 proxy
* http://grafana.box.entwickl.de/

### graphite

* available through apache2 proxy
* http://graphite.box.entwickl.de/