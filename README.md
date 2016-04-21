# vagrant-devbox-php

full stack php development box through vagrant, ansible and docker

## requirements

* VirtualBox 5.0.14
* Vagrant 1.8.1

### optional vagrant plugins

* vagrant plugin install vagrant-vbguest
* vagrant plugin install vagrant-hostmanager

## vagrant configuration

* copy Vagrantfile.tpl as Vagrantfile to setup vagrant
* copy box.yml.tpl as box.yml to setup vagrant

## ansible provision configuration

* copy vars/all.yml.tpl as vars/all.yml to setup ansible provisioning

## connecting over ssh

* box.entwickl.de:22
* provisioning will create automatically dot/ssh/vagrant folder with private and public keys
  * id_rsa
  * id_rsa.pub
  * id_rsa.ppk for putty pageant
* if there is an existing folder dot/ssh/vagrant folder with private and public keys, then provisioning skips the creation
  * you can put your created private and public keys in dot/ssh/vagrant, so they will be used

## running the ansible playbook over console

* if the playbook should be executed on vagrant provisioning, uncomment line in Vagrantfile

```
sudo ansible-playbook -i "localhost," -c local /vagrant/ansible/install.yml
```

## features

* ubuntu 14.04 LTS
* apache2
* apache2 + php 5.6
* ansible >= 2.0.0
* compass
* composer
* phing-commons
* jenkins
* docker

### virtual docroots (apache2)

* http://box.entwickl.de/
* Virtual Document Roots under /var/www/**
* each directory that has a public folder e.g. /var/www/foo/public/index.php
  * can be called e.g. http://foo.box.entwickl.de/

### jenkins

* http://jenkins.box.entwickl.de/

#### jenkins plugins

* plugins are installed via http
* jenkins has to be installed, so we have to run this afterwards
* splitting this into own playbook makes plugin installation also easier

```
sudo ansible-playbook -i "localhost," -c local /vagrant/ansible/jenkins-plugins.yml
```

## docker

### docker elasticsearch

* http://box.entwickl.de:9200
* https://hub.docker.com/_/elasticsearch/

##### docker elasticsearch kibana

* http://kibana.elasticsearch.box.entwickl.de/
* https://hub.docker.com/_/kibana/

### docker grafana

* http://grafana.box.entwickl.de/
* https://hub.docker.com/r/grafana/grafana/
* user: admin
* pass: welcome

### docker graphite + statsd

* http://graphite.box.entwickl.de/
* https://hub.docker.com/r/hopsoft/graphite-statsd/

### docker mailcatcher

* http://mailcatcher.box.entwickl.de/
* https://hub.docker.com/r/schickling/mailcatcher/

### docker memcached

* http://box.entwickl.de:11211
* https://hub.docker.com/_/memcached/

### docker mongo

* http://box.entwickl.de:27017
* https://hub.docker.com/_/mongo/

### docker mysql

* http://box.entwickl.de:3306
* https://hub.docker.com/_/mysql/
* user: root
* pass: welcome

### docker neo4j

* http://neo4j.box.entwickl.de/
* https://hub.docker.com/_/neo4j/

### docker rabbitmq

* http://rabbitmq.box.entwickl.de/
* https://hub.docker.com/_/rabbitmq/
* user: root
* pass: welcome

### docker redis

* http://box.entwickl.de:6379
* https://hub.docker.com/_/redis/

## links

* https://developerkarma.com/post/2014/vagrant-tricks/