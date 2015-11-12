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

### apache2

* http://box.entwickl.de/
* Virtual Document Roots under /var/www/**
* each directory that has a public folder e.g. /var/www/foo/public/index.php
  * can be called e.g. http://foo.box.entwickl.de/

### docker mysql

* http://box.entwickl.de:3306
* https://hub.docker.com/_/mysql/

### docker mongo

* http://box.entwickl.de:27017
* https://hub.docker.com/_/mongo/

### docker memcached

* http://box.entwickl.de:11211
* https://hub.docker.com/_/memcached/

### docker grafana

* available through apache2 proxy
* http://grafana.box.entwickl.de/
* http://box.entwickl.de:49152
* https://hub.docker.com/r/grafana/grafana/

### docker graphite + statsd

* available through apache2 proxy
* http://graphite.box.entwickl.de/
* http://box.entwickl.de:49153
* https://hub.docker.com/r/hopsoft/graphite-statsd/

### docker ansible semaphore

* available through apache2 proxy
* http://semaphore.box.entwickl.de/
* http://box.entwickl.de:49154
* https://hub.docker.com/r/castawaylabs/semaphore/
  * Initial Login
  * admin@semaphore.local
  * CastawayLabs

### docker mailcatcher

* available through apache2 proxy
* http://mailcatcher.box.entwickl.de/
* http://box.entwickl.de:1080
* https://hub.docker.com/r/schickling/mailcatcher/