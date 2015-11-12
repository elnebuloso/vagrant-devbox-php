# vagrant-devbox-php

* full stack php development box through vagrant and ansible

## provisioning

* this box is provisioned through ansible
* all configuration settings can be changed in ansible/vars/all.yml

## connecting over ssh

* box.entwickl.de:22
* use the private key files generated in dot/ssh/vagrant
* private keys are automatically generated
  * id_rsa
  * id_rsa.pub
  * id_rsa.ppk for putty pageant

## running the ansible playbook over console

```
sudo ansible-playbook -i "localhost," -c local /vagrant/ansible/playbook.yml
```

## features

* ubuntu 14.04 LTS
* ansible
* apache2
* mysql
* memcached
* mongo
* grafana
* graphite
* statsd
* ansible semaphore

### apache2

* http://box.entwickl.de/
* Virtual Document Roots under /var/www/**
* each directory that has a public folder e.g. /var/www/foo/public/index.php
  * can be called e.g. http://foo.box.entwickl.de/

### grafana

* available through apache2 proxy
* http://grafana.box.entwickl.de/
* http://box.entwickl.de:49152

### graphite

* available through apache2 proxy
* http://graphite.box.entwickl.de/
* http://box.entwickl.de:49153

### ansible semaphore

* available through apache2 proxy
* http://semaphore.box.entwickl.de/
* http://box.entwickl.de:49154

### mailcatcher

* available through apache2 proxy
* http://mailcatcher.box.entwickl.de/
* http://box.entwickl.de:1080